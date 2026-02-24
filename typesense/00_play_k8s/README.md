#

```sh
kind create cluster --name typesense --wait 5m
helm template typesense ../helm/typesense --values values.yaml
helm install typesense ../helm/typesense --values values.yaml
```
