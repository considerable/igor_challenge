igor_challenge

# 1. Infrastructure

## Simple and sound architecture of a static web application in AWS

Complete architecture leverages S3 for hosting the static files, CloudFront for content delivery, ACM for SSL/TLS certificates, WAF for web application security, IAM for access control, Route 53 for DNS management, and additional services for monitoring, logging, and compliance.
By combining these AWS services and components, a scalable and secure static web application architecture can be created.

Simplified architecture for igor_challenge only includes S3 hosting and CloudFront content delivery with default ACM certificate from the above list. 

The application is up and running for testing as follows:
- HTTPS, https://d30is9u11vobsg.cloudfront.net
- HTTP, http://d30is9u11vobsg.cloudfront.net

## Repository structure

 ```
├── Dockerfile
├── README.md
├── app
│   └── index.html
├── cdn-cloudfront-playbook.yml
├── s3-static-playbook.yml
└── code
    ├── input.txt
    └── validate_credit_card_numbers.py
```
`Dockerfile` helps to run Ansible with AWS CLI on Mac, `README.md` - this file, `app` contains the static web application for deployment, `s3-static-playbook.yml` is a playbook to host the application, `cdn-cloudfront-playbook.yml` is a playbook to provide the http-to-https redirection and CDN-style content distribution at scale via AWS CloudFront, `code` contains Python solution to the coding part of igor_challenge.

# 2. Coding

## Python solution

https://www.hackerrank.com/challenges/validating-credit-card-number/problem
