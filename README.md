
<a name="readme-top"></a>

## Join us


[![LinkedIn][linkedin-aws-dugb]][linkedin-url]



[![Meetup][meetup-aws-dugb]][meetup-aws-dugb-url]

<br />
<div align="center">
    <img src="https://raw.githubusercontent.com/aws-data-usergroup-bangalore/aws-dugb-images/main/aws-dugb.png" width="300">
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#terraform-setup">Terraform Setup</a></li>
      </ul>
    </li>
    <li><a href="#sagemaker-notebook">Sagemaker Notebook</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->

This terraform will create Sagemaker Studio, User Profiles.

<!-- GETTING STARTED -->
## Getting Started


### Prerequisites

Ensure that you create AccessKey from your AWS Account configure AWS Credential locally
* AWS CLI
  ```aws configure
  AWS Access Key ID [None]: AKIAI**YourKeu
  AWS Secret Access Key [None]: YouaccessKey
  Default region name [None]: us-east-1
  Default output format [None]: json
  ```

### This will provision the sagemaker Domain, User profile

This will create S3 Bucket, DynamoDB lock Tables

1. Clone the repo
   ```sh
   git clone https://github.com/aws-data-usergroup-bangalore/aws-dugb-sagemaker-beginner.git
   ```
2. Run Terraform init to Check the provider loaded as expected
   ``` 
   cd aws-dugb-sagemaker-tfsetup
   terraform init
   ```
3. Run Terraform Plan
   ```
   terraform plan
   ```
4. Run Terraform apply
   ```
   terraform apply
   ```
   
## Sagemaker Notebook

You can launch Sagemaker Notebook Jupyter Lab - Import Below Github for Pipeline

https://github.com/aws-data-usergroup-bangalore/sagemaker-mlops.git



<p align="right">(<a href="#readme-top">back to top</a>)</p>




[linkedin-aws-dugb]: https://github.com/aws-data-usergroup-bangalore/aws-dugb-images/blob/main/linkedin.JPG?raw=true
[linkedin-url]: https://www.linkedin.com/company/aws-data-user-group-bangalore
[meetup-aws-dugb]: https://raw.githubusercontent.com/aws-data-usergroup-bangalore/aws-dugb-images/main/meetup_logo.JPG
[meetup-aws-dugb-url]: https://www.meetup.com/aws-data-user-group-bangalore

[awsdugb-image]: https://secure.meetupstatic.com/photos/event/3/6/1/2/clean_509113842.jpeg
