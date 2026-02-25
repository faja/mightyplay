{{- define "typesense.fullname" -}}
{{- default .Release.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "typesense.labels" -}}
{{ include "typesense.selectorLabels" . }}
app.kubernetes.io/managed-by: helm
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "typesense.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ include "typesense.fullname" . }}
{{- end }}

{{- define "typesense.nodes" -}}
{{- $fullname := include "typesense.fullname" . -}}
{{- $replicas := int (default .Values.replicaCount .Values.clusterNodes) -}}
{{- range $i := until $replicas -}}
{{- if $i }},{{ end -}}
{{ $fullname }}-{{ $i }}.{{ $fullname }}-hl.{{ $.Release.Namespace }}.svc.cluster.local:8107:8108
{{- end -}}
{{- end }}
