- List lambbda functions (need AWSLambdaFullAccess policy attached)
```
  aws lambda list-functions --region us-west-2
```

```
  aws lambda list-functions --output table
```
- List lambda function name
```
  aws lambda list-functions --region --query Functions[].FuncationName
```


## Create role an attach policy for lambda functions 
To access AWS CloudWathLogs in lambda function
- Method 1: Using existed policy: CloudWatchFullAccess
- Method 2: Create new policy to CloudWatch service
```
{
  "Version": "2012-10-17",
  "Statement": [
  {
    "Sid": "VisualEditor0",
    "Effect": "Allow",
    "Action": [
      "logs:CreateLogStream",
      "logs:CreateLogGroup",
      "logs:PutLogEvents"
    ],
    "Resource": "*"
    }
  ]
}
```

## Build 
The Lambda runtime environment is based on an Amazon Linux AMI, therefore, the handler should be compiled for Linux
```
#!/bin/bash
echo "Build the binary"
GOOS=linux GOARCH=amd64 go build -o main main.go
echo "Create a ZIP file"
zip deployment.zip main
echo "Cleaning up"
rm main
```

## Deploy lambda function using S3
copy lambda function package to S3
```
  aws s3 cp deployment.zip s3://hello-serverless-packt
```


