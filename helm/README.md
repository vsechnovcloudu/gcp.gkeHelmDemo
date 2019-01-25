Google Clouds managed Kubernetes - demo
=======================================

Deploy GKE using Terraform.  

Get credentials to `kubectl` via GCP Webconsole.

Install Helm via provided `install_helm.sh` script. It will also register service account.

Deploy service `helm install --name first ./littleserver --set service.type=LoadBalancer
`.

Modify Helm chart and upgrade running service with `helm upgrade first ./littleserver/`.

After playing, Terraform destroy!
