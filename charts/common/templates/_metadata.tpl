{{- define "common.labels" -}}
helm.sh/chart: {{ include "common.chart" . }}
{{ include "common.selectorLabels" . }}
{{- with .Chart.AppVersion }}
app.kubernetes.io/version: {{ . | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "common.selectorLabels" -}}
app.kubernetes.io/name: {{ include "common.fullname" . }}
app.kubernetes.io/instance: {{ include "common.fullname" . }}
{{- end }}

{{- define "common.metadata.tpl" -}}
{{- $top := first . -}}
namespace: {{ $top.Values.namespace | default $top.Chart.Name }}
labels:
  {{- include "common.labels" $top | nindent 2 }}
{{- end }}

{{- define "common.metadata" -}}
{{- include "common.utils.merge" (append . "common.metadata.tpl") }}
{{- end }}
