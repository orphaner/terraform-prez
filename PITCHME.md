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

## first steps
List of commands:

```
$ terraform
Usage: terraform [--version] [--help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    push               Upload this Terraform module to Atlas to run
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan

...
```
@[2-8](Unix usage and description)
@[10-20](Commands list with description)

+++

Version:

```
$ terraform version
Terraform v0.11.2
```

+++

Help:
```
$ terraform fmt --help

Usage: terraform fmt [options] [DIR]

	Rewrites all Terraform configuration files to a canonical format.

	If DIR is not specified then the current working directory will be used.
	If DIR is "-" then content will be read from STDIN.

Options:

  -list=true       List files whose formatting differs (always false if using STDIN)

...
```

+++

### TF / JSON file
* 2 formats:
  1. `TF`: for human
  2. `Json`: for machine generation

* Intellij plugin for `.tf`

* Standard formating with `terraform fmt`

+++

### Gcloud Create Credentials
"API & Services" > "Credentials" > "Create credentials" > "Service Account Key" as JSON file

Save file as `account.json`

+++

---?code=learn/gcloud.tf&title=Create First VM
@[1-6](Declare cloud provider)
@[9-24](Create a compute instance)

+++

### Terraform init
* First command to run:
  * on a new configuration
  * after a git pull

* Terraform is based on plugin:
  * each provider is its own binary
  * needs to be downloaded

+++

```
$ terraform init

Initializing provider plugins...
 - Checking for available provider plugins on https://releases.hashicorp.com...
 - Downloading plugin for provider "google" (1.4.0)...
```

+++


``` txt
$ tree .terraform
.terraform
\|-- plugins
    \|-- linux_amd64
        \|-- lock.json
        \|-- terraform-provider-google_v1.4.0_x4
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
