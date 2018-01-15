# Terraform


#### Markdown Presentations For Everyone on Git.*

---




### Installation

```
 https://www.terraform.io/downloads.html
 wget https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
 unzip terraform_0.11.2_linux_amd64.zip
 sudo mv terraform /usr/local/bin/
 sudo chmod +x /usr/local/bin/terraform
```

+++

### first steps
List of subcommands:

```
 terraform
```

Version:

```
 terraform version
```

Help:

```
 terraform subcommand --help
```

+++

### TF / JSON file
2 formats:

. TF: for human
. Json: for machine generation

Intellij plugin for `.tf`

+++

### Gcloud Create Credentials
 "API & Services" > "Credentials" > "Create credentials"
 > "Service Account Key" as JSON file

Save file as `account.json`

+++

### Create First VM


+++

### Terraform init
First command to run:
 * on a new configuration
 * after a git pull

Terraform is based on plugin:
* each provider is its own binary
* needs to be downloaded

```
terraform init
```

 Initializing provider plugins...
 - Checking for available provider plugins on https://releases.hashicorp.com...
 - Downloading plugin for provider "google" (1.4.0)...

+++


```
tree .terraform 
.terraform
|── plugins
    |── linux_amd64
        |── lock.json
        |── terraform-provider-google_v1.4.0_x4
```

### Terraform plan
Execution plan

+++

### Terraform apply

+++

### Verification

```
gcloud compute instances list

NAME      ZONE            MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
first-vm  europe-west1-b  n1-standard-1               10.132.0.2   35.195.144.131  RUNNING

```
+++

### Terraform destroy

```
terraform destroy
```
