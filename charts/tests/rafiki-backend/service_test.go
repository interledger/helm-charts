package test

import (
	"fmt"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/stretchr/testify/require"

	"github.com/gruntwork-io/terratest/modules/helm"
	"github.com/gruntwork-io/terratest/modules/k8s"
	"github.com/gruntwork-io/terratest/modules/random"
)

func TestHelmBasicExampleDeployment(t *testing.T) {
	t.Parallel()

	// Path to the helm chart we will test
	helmChartPath, err := filepath.Abs("../../rafiki-backend")
	require.NoError(t, err)

	// To ensure we can reuse the resource config on the same cluster to test different scenarios, we setup a unique
	// namespace for the resources for this test.
	// Note that namespaces must be lowercase.
	namespaceName := fmt.Sprintf("rafiki-backend-%s", strings.ToLower(random.UniqueId()))

	// We generate a unique release name so that we can refer to after deployment.
	// By doing so, we can schedule the delete call here so that at the end of the test, we run
	// `helm delete RELEASE_NAME` to clean up any resources that were created.
	releaseName := namespaceName

	// Setup the kubectl config and context. Here we choose to use the defaults, which is:
	// - HOME/.kube/config for the kubectl config file
	// - Current context of the kubectl config file
	kubectlOptions := k8s.NewKubectlOptions("", "", namespaceName)

	k8s.CreateNamespace(t, kubectlOptions, namespaceName)
	// ... and make sure to delete the namespace at the end of the test
	defer k8s.DeleteNamespace(t, kubectlOptions, namespaceName)

	// Setup the args. For this test, we will set the following input values:
	options := &helm.Options{
		KubectlOptions: kubectlOptions,
	}

	defer helm.Delete(t, options, releaseName, true)

	// Deploy the chart using `helm install`. Note that we use the version without `E`, since we want to assert the
	// install succeeds without any errors.
	helm.Install(t, options, helmChartPath, releaseName)

	// Now let's verify the deployment. We will get the service endpoint and try to access it.

	// First we need to get the service name. We will use domain knowledge of the chart here, where the name is
	// RELEASE_NAME-CHART_NAME
	serviceName := fmt.Sprintf("%s-service", releaseName)

	// Next we wait until the service is available. This will wait up to 10 seconds for the service to become available,
	// to ensure that we can access it.
	k8s.WaitUntilServiceAvailable(t, kubectlOptions, serviceName, 20, 1*time.Second)

	// Now we verify that the service will successfully boot and start serving requests
	service := k8s.GetService(t, kubectlOptions, serviceName)

	// Now lets check that the service that we have, has correct name
	require.Equal(t, service.Name, serviceName)
}
