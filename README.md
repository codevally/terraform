## How to install Terraform

Head over to https://www.terraform.io/downloads.html and download the latest zip file for your operating system.

Extract the zip file in to a location where you're happy to keep it.

Add that location to your path.

So if you extracted the Terraform executable to `/home/mark/terraform/`

For linux/mac run `export PATH=$PATH:/home/mark/terraform:$PATH`

For Windows users run ```set PATH=%PATH%;C:\terraform```

Folder | Lesson
------------ | -------------
demo.1 | Spinning up your first instance
demo.2 | Using AWS CLI variables/credentials
demo.2a | Using terraform.tfvars for credentials
demo.3 | Bootstraping software
demo.4 | Creating an S3 bucket
demo.5 | Saving Terraform remote state to S3
demo.6 | Data sources
