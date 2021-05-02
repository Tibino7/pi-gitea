{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "postgres.name" -}}
{{- default .Chart.Name "postgres" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "memcached.name" -}}
{{- default .Chart.Name "memcached" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "http-ingress.name" -}}
{{- printf "%s-http-ingress" (include "name" .) -}}
{{- end -}}

{{- define "ssh-ingress.name" -}}
{{- printf "%s-ssh-ingress" (include "name" .) -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{- define "postgres.fullname" -}}
{{- $name := "postgres" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{- define "memcached.fullname" -}}
{{- $name := "memcached" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}

{{- define "db.fullname" -}}
{{- $name := default .Chart.Name "db" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{- end -}}
