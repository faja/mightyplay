# typesense

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiKey | string | `"xyz123"` |  |
| clusterNodes | string | `nil` | used for `--nodes` file content, default (`nil`) means, same value as `replicaCount`, set this for scaling up/down process |
| fullnameOverride | string | `""` | default is helm release name |
| image.repository | string | `"typesense/typesense"` |  |
| image.tag | string | `"30.1"` |  |
| replicaCount | int | `1` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| runAsUser | int | `65534` |  |
| sleep | bool | `false` |  |
| storage.className | string | `"standard"` |  |
| storage.size | string | `"1Gi"` |  |
