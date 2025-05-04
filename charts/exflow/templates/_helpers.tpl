{{/*
Expand the name of the chart.
*/}}
{{- define "exflow.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "exflow.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "exflow.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "exflow.labels" -}}
helm.sh/chart: {{ include "exflow.chart" . }}
{{ include "exflow.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "exflow.selectorLabels" -}}
app.kubernetes.io/name: {{ include "exflow.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
exflow Selector labels
*/}}
{{- define "exflow.exflow.selectorLabels" -}}
app.kubernetes.io/name: {{ include "exflow.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Postgres Selector labels
*/}}
{{- define "exflow.postgres.selectorLabels" -}}
app.kubernetes.io/name: {{ include "exflow.name" . }}-postgres
app.kubernetes.io/instance: {{ .Release.Name }}-postgres
{{- end }}

{{/*
Project Runner Selector labels
*/}}
{{- define "exflow.projectRunner.selectorLabels" -}}
app.kubernetes.io/name: {{ include "exflow.name" . }}-runner
app.kubernetes.io/instance: {{ .Release.Name }}-runner
{{- end }}

{{/*
exflow Runner Selector labels
*/}}
{{- define "exflow.sharedRunner.selectorLabels" -}}
app.kubernetes.io/name: {{ include "exflow.name" . }}-shared-runner
app.kubernetes.io/instance: {{ .Release.Name }}-shared-runner
{{- end }}
