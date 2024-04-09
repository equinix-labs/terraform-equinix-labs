# Demo Install Steps

- Install jq if you don't have it already

https://jqlang.github.io/jq/download/

- Install git if you don't have it already

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

```sh
git clone https://github.com/cprivitere/terraform-gcpartner-anthos-baremetal
```

- Install Terraform if you don't have it already

https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli

```sh
cd terraform-gcpartner-anthos-baremetal
terraform init -upgrade
```

- Install Gcloud CLI if you dont' have it already

https://cloud.google.com/sdk/docs/install

- do a gcloud init and set it up to connect your GCP project
- Edit the terraform.tfvars file to have your API key and Project ID

```sh
terraform plan
terraform apply
terraform output kubeconfig | grep -v EOT > ~/anthos.kubeconfig
cd ~
export KUBECONFIG=~/anthos.kubeconfig
```

- Install kubectl if you don't have it already

https://kubernetes.io/docs/tasks/tools/

- Validate the cluster is working

```sh
kubectl get nodes
kubectl get pods
kubectl patch storageclass local-shared -p '{"metadata":{"annotations":{"storageclass.kubernetes.io/is-default-class": "true"}}}'
```

- Install Helm if you don't have it already

https://helm.sh/docs/intro/install/

```sh
git clone https://github.com/open-webui/open-webui/
cd open-webui
helm package ./kubernetes/helm/
helm install ollama-webui ./open-webui-1.0.0.tgz --set webui.ingress.enabled=true
kubectl get ingress open-webui
```

- You may need to wait a while for the ingress to be ready, just wait until the Address field has an IP address in it.

- Open a web browser and go to that IP address, using normal http (no https): http://IPADDRESSFROMLASTSTEP

- It may say no route to upstream while the webui is starting up, just keep refreshing until it works

- Go to settings->Connections edit the ollama url and remove the /api at the end

- click the little reload button next to the ollama url

- Wait for it to pop up that it connected to ollama

- Now go to the Settings->Models

- Type `gemma:2b` into the "Pull a model from Ollama.com" box and click the download button

- Wait for it to say the model has been successfully downloaded. This will take a while, even after it says 100%.

- Close Settings

- Choose gemma:2b from the models drop down

- Type a prompt and see if it works
