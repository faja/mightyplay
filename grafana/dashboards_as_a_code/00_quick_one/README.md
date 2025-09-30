```
docker compose up -d
cd terraform
terraform init && terraform apply
jb install
reflex -r "\.jsonnet$" ./render.sh
```
