# Interledger Kubernetes Helm Charts

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Release Charts](https://github.com/interledger/helm-charts/actions/workflows/release.yaml/badge.svg?branch=main)](https://github.com/interledger/helm-charts/actions/workflows/release.yaml)

Helm charts are a key component of the Helm package manager system used in managing Kubernetes applications. Helm is often described as the "apt/yum/homebrew for Kubernetes" and provides a way to package, configure and deploy applications onto Kubernetes clusters.

This repository includes three Helm Charts for Rafiki:
* **rafiki_auth**
* **rafiki_backend**
* **rafiki_frontend**

## Contributing

All contributions must adhere to our [code of conduct](CODE_OF_CONDUCT.md).

**Contrigution guidelines - TBD**

## Run Locally

### Prerequisites
* [Docker](https://docs.docker.com/engine/install/)
* [Minikube](https://minikube.sigs.k8s.io/docs/start/)
* [Helm](https://helm.sh/docs/intro/install/)


### Installation steps
Clone the project

```bash
git clone https://github.com/interledger/helm-charts.git
```

Go to the charts directory

```bash
cd helm-charts/cherts
```

Install rafiki-auth on local kubernetes cluster

```bash
helm install rafiki-auth rafiki-auth --create-namespace --namespace rafiki
```

_Note: first `rafiki-auth` is actually a release name and it is whatever you want it to be. The second `rafiki-auth` is a chart directory to install to k8s._

Helm Chart `rafiki-auth` has been installed on your cluster.

Run following command to get pods

```bash
kubectl get pods -n rafiki
```


## Deployment

To deploy this project, you can either install each of the charts into your kubernetes cluster, or follow the [Rafiki Deployment documentation](https://rafiki.dev/integration/deployment/). 

Following the steps on the above URL will also install you Rafiki dependencies, like database and redis.

### Deploying from this project

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add interledger https://interledger.github.io/helm-charts
```

You can then run `helm search repo interledger` to see the charts.

For checking the variables of each of these charts, please see Readme for corresponding chart.



## License

[Apache 2.0 License](https://github.com/interledger/helm-charts/blob/main/LICENSE)

