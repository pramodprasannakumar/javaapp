{{/*
Expand the name of the chart.
*/}}
{{- define "carwebsitelunch.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming convention).
*/}}
{{- define "carwebsitelunch.fullname" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "carwebsitelunch.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Common labels
*/}}
{{- define "carwebsitelunch.labels" -}}
helm.sh/chart: {{ include "carwebsitelunch.chart" . }}
{{ include "carwebsitelunch.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "carwebsitelunch.selectorLabels" -}}
app: {{ include "carwebsitelunch.name" . }}
{{- end }}
