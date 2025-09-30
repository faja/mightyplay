```
docker compose up -d
cd terraform
terraform init && terraform apply
reflex -r "\.jsonnet$" ./render.sh
```
