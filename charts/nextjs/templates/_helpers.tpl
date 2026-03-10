{{- define "nextjs.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "nextjs.labels" -}}
app.kubernetes.io/name: {{ include "nextjs.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "nextjs.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nextjs.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
