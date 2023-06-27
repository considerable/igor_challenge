# Ansible S3 Static Playbook

This Ansible playbook (`s3-static-playbook.yml`) automates the process of deploying a static website to an S3 bucket on AWS. The playbook performs the following steps:

1. Create a new S3 bucket.
2. Configure the bucket to redirect all requests to the `index.html` file.
3. Edit the Block Public Access settings to ensure public access is allowed.
4. Add a bucket policy that makes the bucket's content publicly available.
5. Upload the website content to the S3 bucket.
6. Test the website in a browser.
7. Delete the S3 bucket.

## Prerequisites

Before running this playbook, ensure that the following prerequisites are met:

- Ansible is installed on the local machine or the Ansible control node.
- AWS CLI is installed and configured with appropriate access credentials.

## Usage

* Update the playbook variables:
   - `bucket_name`: Specify the desired name for the S3 bucket.
   - `region`: Specify the AWS region where the bucket should be created.
   - `test_url`: Automatically generated URL for testing the website.
   - `test_msg`: Test instructions to be displayed after the deployment.

* Run the playbook:
   ```bash
   ansible-playbook s3-static-playbook.yml
   ```

   The playbook will execute each step sequentially, performing the necessary AWS CLI commands to set up the S3 bucket and deploy the website.

* Test the website in a browser:
   - Open the generated website [http://igor-challenge.s3-website-us-west-2.amazonaws.com](http://igor-challenge.s3-website-us-west-2.amazonaws.com) (test_url) in a browser. It should display the `index.html` (Hello, World) file.
   - Access [http://igor-challenge.s3-website-us-west-2.amazonaws.com/x](http://igor-challenge.s3-website-us-west-2.amazonaws.com/x) (test_url/x) in the browser. It should also display `index.html` file without a 404 error.

* After testing, the playbook includes a step to delete the S3 bucket to clean up the resources. 

**Note:** Be cautious when executing this step, as it permanently deletes the bucket and its contents.


