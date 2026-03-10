{{- define "laravel.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "laravel.labels" -}}
app.kubernetes.io/name: {{ include "laravel.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "laravel.selectorLabels" -}}
app.kubernetes.io/name: {{ include "laravel.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "laravel.workerSelectorLabels" -}}
app.kubernetes.io/name: {{ include "laravel.fullname" . }}-worker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "laravel.dbHost" -}}
{{ include "laravel.fullname" . }}-db-rw.{{ .Release.Namespace }}.svc.cluster.local
{{- end }}

{{- define "laravel.redisHost" -}}
{{ include "laravel.fullname" . }}-redis.{{ .Release.Namespace }}.svc.cluster.local
{{- end }}
