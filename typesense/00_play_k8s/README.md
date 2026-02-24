#

```sh
kind create cluster --name typesense --wait 5m
helm template typesense ../../helm_charts/typesense --values values.yaml
helm upgrade  typesense ../../helm_charts/typesense --values values.yaml --install
```
