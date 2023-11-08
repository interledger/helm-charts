{{- define "common.pod.template.tpl" -}}
{{- $top := first . }}
{{- $pod := index . 1 }}
{{- $serviceAccount := index . 2 }}
metadata:
  {{- with $pod.podAnnotations }}
  annotations:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  labels:
    {{- include "common.selectorLabels" $top | nindent 4 }}
  {{- with $pod.podLabels }}
    {{- toYaml . | nindent 4 }}
  {{- end }}
spec:
  {{- if $serviceAccount.create }}
  serviceAccountName: {{ include "common.serviceAccountName" (list $top $serviceAccount) }}
  {{- else }}
  automountServiceAccountToken: true
  {{- end }}
  securityContext:
    {{- toYaml $top.Values.podSecurityContext | nindent 4 }}
  {{- if $pod.initContainers }}
  initContainers:
    {{- range $initContainer := $pod.initContainers }}
      {{- include "common.container" (list $top $initContainer $pod) | nindent 4 }}
    {{- end }}
  {{- end }}
  containers:
  {{- range $container := $pod.containers }}
    {{- include "common.container" (list $top $container $pod) | nindent 4 }}
  {{- end }}
  {{- with $pod.nodeSelector }}
  nodeSelector:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  {{- with $pod.affinity }}
  affinity:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  {{- with $pod.tolerations }}
  tolerations:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  {{- with $pod.priorityClassName }}
  priorityClassName: {{ . }}
  {{- end }}
  {{- if or ($pod.secretProvider) ($pod.volumes) }}
  volumes:
    {{- range $secretProvider := $pod.secretProvider }}
    - name: {{ $secretProvider.name }}
      csi:
        driver: secrets-store.csi.k8s.io
        readOnly: true
        volumeAttributes:
          secretProviderClass: {{ $secretProvider.name }}
    {{- end }}
    {{- with $pod.volumes }}
      {{- toYaml . | nindent 4 }}
    {{- end }}
  {{- end }}
{{- end }}

{{- define "common.pod.template" -}}
{{- include "common.utils.merge" (append . "common.pod.template.tpl") }}
{{- end }}
