# JOMACS-terraform-finalProject
## JOMACS TRAINING INSTITUTIONS
### AUTHOR: DOMINIC QUANSAH
### DATE CREATED: 01/11/23
### DATE MODIFIED: 25/11/23

# PROJECT OVERVIEW 
This is my Final Cloud Projects after training with JOMACS IT SOLUTIONS INC. This project is designed to put my expertise and understanding of infrastructure as code (IaC) by using terraform to deploy AWS services.

## Objective
To create a secure VPC environment in AWS using Terraform where an EC2 instance is running an Nginx web server. The EC2 instance should reside within a private subnet and should be accessible to the outside world via a load balancer. Traffic to the EC2 instance should be routed through a NAT gateway.

## Project Structure
1. The JOMACS-terraform-finalProject repository contains a **Source directory**, **.github/workflows directory**, and a **README.md file**.
2. The source directory contains a modules directory as well as three terraform files: main.tf, provider.tf, and output.tf.
3. The .github/workflows directory contains an actions.yaml file that facilitates the usage of Github actions, a CI/CD tool for automating, developing, testing, and deploying applications and infrastructure
4. The YAML file actions contains the workflow definitions for actions.Yaml.
5. The modules directory contains two subdirectories, vpc and ec2. All of the configuration files required to provision the resources are contained in these two modules. The following files are included: vpc.tf, ec2.tf, variable.tf, store.tf, data.tf, output.tf, providers.tf, and script.sh.

   ![Terraform-Structure](https://github.com/SirDominique/terra.tf/assets/142616656/e68862c6-73a7-45d2-8298-2ccc45cf944c)

   
## Resources that will be deployed (include but are limited to:)
1.	VPC
2.	Public Subnet 1
3.	Public Subnet 2
4.	Private Subnet
5.	NAT Gateway
6.	Internet Gateway
7.	Application Load Balancer
8.	Load Balancer Listener
9.	Elastic IP (eip)
10.	Target Group
11.	Security Groups
12.	Route Table Associations
13.	Route Tables
14.	Target Group Attachment
15.	SSM Parameter Resources
16.	EC2 Instance

![Resource-list](https://github.com/SirDominique/terra.tf/assets/142616656/747630d5-58e5-4f12-a661-37e8a4ffadc9)

## Cloud Architecture

![Cloud Architecture drawio](https://github.com/SirDominique/JOMACS-terraform-finalProject/assets/142616656/1b0ba992-759b-45a5-8634-486c06aa6cc3)


## How to Deploy the Infrastructure
 ### In Your Local Environment
1.	Fork or clone the repository to your local environment.
2.	Move into the cloned repository. Create a branch and switch to it.
3.	Change directory to the source directory. This contains the modules directory, **main.tf**, **provider.tf** and **output.tf** files.
4.	Review the code, take note of the comments, and make any necessary modifications (**NB: Terraform state files are stored in an S3 bucket that has already been provisioned**.)
5.	To initialize the configuration of the Terraform provider, run **terraform init**.
6.	To have the resources built, run **terraform validate**, **terraform Plan**, and **terraform apply**.
7.	Once the resources have been provisioned properly, run **terraform destroy** to destroy all of them.
   
### Steps to validate the setup
8.	To access the nginx page via the load balancer copy and paste the load balancer dns name that is outputed after your resources have been created and are running into your browser address bar and hit enter.
9.	As shown in the screenshot below, your browser will show a successful configuration **Congratulating you for installing Nginx**.

    ![Nginix-setup](https://github.com/SirDominique/terra.tf/assets/142616656/3359e403-c651-4696-b4e9-b038a91e2d43)


### CI/CD - Deploying via GitHub Actions (Automation)
1. Once you have reviewed the code, read the comments, and made any necessary modifications in your github repository, commit your changes and push to either the main branch or the required branch.
2. Before your GitHub Actions can run, you must first add your AWS credentials to the repository. To accomplish this, you must take the following actions:

a.	Go to the **Settings** tab in your repository.

b.	Once there, click the **Secret and Variables** button that you should see on the left. 

c. Select the **Actions** button from the dropdown menu.

d)	Select the **New repository secret** button in the lower right corner of the Actions panel that would open.

e)	Add your **AWS_SECRET_ACCESS_KEY** and then click the "Add secret" button.

f)	Repeat step d, but this time add your **AWS_ACCESS_KEY_ID** and click the "Add secret" button.

3.  Then click the **Actions** tab and choose the necessary workflow. 
4. Clicking on the **Terraform** tab under the actions.yaml should open a successful Terraform log file.

### STEPS TO VALIDATE AUTOMATED SETUP
5. Once your resources have been built and are running, you may copy and paste the load balancer DNS name that is output under the terraform apply log (above) into the address bar of your browser and hit enter, just like you would when working in your local environment.
6. You should get a response **Congratulating you for installing Nginix.**

