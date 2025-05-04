# alertflow

![Version: 1.4.7](https://img.shields.io/badge/Version-1.4.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.4.0](https://img.shields.io/badge/AppVersion-v1.4.0-informational?style=flat-square)

An AlertFlow Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 16.5.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| alertflow.configMap.data.Database.Name | string | `"alertflow"` |  |
| alertflow.configMap.data.Database.Password | string | `"alertflow"` |  |
| alertflow.configMap.data.Database.Port | int | `5432` |  |
| alertflow.configMap.data.Database.Server | string | `"alertflow-postgresql"` |  |
| alertflow.configMap.data.Database.User | string | `"alertflow"` |  |
| alertflow.configMap.data.Encryption.Enabled | bool | `true` |  |
| alertflow.configMap.data.Encryption.Key | string | `"key"` |  |
| alertflow.configMap.data.JWT.Secret | string | `"secret"` |  |
| alertflow.configMap.data.LogLevel | string | `"info"` |  |
| alertflow.configMap.enabled | bool | `true` |  |
| alertflow.pullPolicy | string | `"Always"` |  |
| alertflow.replicas | int | `1` |  |
| alertflow.repository | string | `"justnz/alertflow"` |  |
| alertflow.service.name | string | `"alertflow"` |  |
| alertflow.service.ports.backend.name | string | `"backend"` |  |
| alertflow.service.ports.backend.port | int | `8080` |  |
| alertflow.service.ports.backend.targetPort | int | `8080` |  |
| alertflow.service.ports.frontend.name | string | `"frontend"` |  |
| alertflow.service.ports.frontend.port | int | `3000` |  |
| alertflow.service.ports.frontend.targetPort | int | `3000` |  |
| alertflow.service.type | string | `"ClusterIP"` |  |
| alertflow.tag | string | `""` |  |
| alertflowRunner.configMap.data.alert_endpoints.port | int | `8080` |  |
| alertflowRunner.configMap.data.alertflow.api_key | int | `1234567890` |  |
| alertflowRunner.configMap.data.alertflow.url | string | `"http://localhost:8080"` |  |
| alertflowRunner.configMap.data.exflow.enabled | bool | `false` |  |
| alertflowRunner.configMap.data.log_level | string | `"info"` |  |
| alertflowRunner.configMap.data.mode | string | `"master"` |  |
| alertflowRunner.configMap.data.plugins[0].name | string | `"alertmanager"` |  |
| alertflowRunner.configMap.data.plugins[0].version | string | `"v1.2.2"` |  |
| alertflowRunner.configMap.data.plugins[1].name | string | `"mail"` |  |
| alertflowRunner.configMap.data.plugins[1].version | string | `"v1.2.3"` |  |
| alertflowRunner.configMap.enabled | bool | `true` |  |
| alertflowRunner.enabled | bool | `false` |  |
| alertflowRunner.persistence.accessMode | string | `"ReadWriteMany"` |  |
| alertflowRunner.persistence.enabled | bool | `false` |  |
| alertflowRunner.persistence.size | string | `"5Gi"` |  |
| alertflowRunner.pullPolicy | string | `"Always"` |  |
| alertflowRunner.replicas | int | `2` |  |
| alertflowRunner.repository | string | `"justnz/runner"` |  |
| alertflowRunner.service.name | string | `"alertflow-runner"` |  |
| alertflowRunner.service.port | int | `8080` |  |
| alertflowRunner.service.target_port | int | `8080` |  |
| alertflowRunner.service.type | string | `"ClusterIP"` |  |
| alertflowRunner.tag | string | `"v1.0.4"` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `15` |  |
| autoscaling.minReplicas | int | `3` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"traefik"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0] | string | `"alertflow.org"` |  |
| ingress.hosts[1] | string | `"www.alertflow.org"` |  |
| ingress.ingressClassName | string | `"traefik"` |  |
| ingress.tls[0].hosts[0] | string | `"alertflow.org"` |  |
| ingress.tls[0].hosts[1] | string | `"www.alertflow.org"` |  |
| ingress.tls[0].secretName | string | `"alertflow-org-tls"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.global.postgresql.auth.database | string | `"alertflow"` |  |
| postgresql.global.postgresql.auth.password | string | `"alertflow"` |  |
| postgresql.global.postgresql.auth.username | string | `"alertflow"` |  |
| postgresql.primary.persistence.accessModes[0] | string | `"ReadWriteMany"` |  |
| postgresql.primary.persistence.size | string | `"20Gi"` |  |
| postgresql.volumePermissions.enabled | bool | `true` |  |
| projectRunner.configMap.data.alert_endpoints.port | int | `8080` |  |
| projectRunner.configMap.data.alertflow.api_key | int | `1234567890` |  |
| projectRunner.configMap.data.alertflow.url | string | `"http://localhost:8080"` |  |
| projectRunner.configMap.data.exflow.enabled | bool | `false` |  |
| projectRunner.configMap.data.log_level | string | `"info"` |  |
| projectRunner.configMap.data.mode | string | `"master"` |  |
| projectRunner.configMap.data.plugins[0].name | string | `"alertmanager"` |  |
| projectRunner.configMap.data.plugins[0].version | string | `"v1.2.2"` |  |
| projectRunner.configMap.data.plugins[1].name | string | `"mail"` |  |
| projectRunner.configMap.data.plugins[1].version | string | `"v1.2.3"` |  |
| projectRunner.configMap.enabled | bool | `true` |  |
| projectRunner.enabled | bool | `false` |  |
| projectRunner.persistence.accessMode | string | `"ReadWriteMany"` |  |
| projectRunner.persistence.enabled | bool | `false` |  |
| projectRunner.persistence.size | string | `"5Gi"` |  |
| projectRunner.pullPolicy | string | `"Always"` |  |
| projectRunner.replicas | int | `2` |  |
| projectRunner.repository | string | `"justnz/runner"` |  |
| projectRunner.service.name | string | `"project-runner"` |  |
| projectRunner.service.port | int | `8080` |  |
| projectRunner.service.target_port | int | `8080` |  |
| projectRunner.service.type | string | `"ClusterIP"` |  |
| projectRunner.tag | string | `"v1.0.4"` |  |
| resources.requests.cpu | string | `"400m"` |  |
| resources.requests.memory | string | `"768Mi"` |  |
| securityContext | object | `{}` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
