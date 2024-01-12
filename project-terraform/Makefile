virginia:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform apply -var-file regions/virginia.tfvars --auto-approve
	
ohio:
	terraform workspace new ohio || terraform workspace select ohio
	terraform init
	terraform apply -var-file regions/ohio.tfvars --auto-approve

california:
	terraform workspace new california || terraform workspace select california
	terraform init
	terraform apply -var-file regions/california.tfvars --auto-approve
	
oregon:
	terraform workspace new oregon || terraform workspace select oregon
	terraform init
	terraform apply -var-file regions/oregon.tfvars --auto-approve
	
apply-all: virginia ohio california oregon

virginia-destroy:
	terraform workspace new virginia || terraform workspace select virginia
	terraform init
	terraform destroy -var-file regions/virginia.tfvars --auto-approve

ohio-destroy:
	terraform workspace new ohio || terraform workspace select ohio
	terraform init
	terraform destroy -var-file regions/ohio.tfvars --auto-approve

california-destroy:
	terraform workspace new california || terraform workspace select california
	terraform init
	terraform destroy -var-file regions/california.tfvars --auto-approve

oregon-destroy:
	terraform workspace new oregon || terraform workspace select oregon
	terraform init
	terraform destroy -var-file regions/oregon.tfvars --auto-approve

destroy-all: virginia-destroy ohio-destroy california-destroy oregon-destroy