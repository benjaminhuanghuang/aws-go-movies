
## Lambda logs
Create policy "lambda-logs-cloudwatch"
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
Create rols for each lambda function and attach the polich 

## API Gateway logs
Create role and attach policy AmazonAPIGatewayPushToCloudWatchLogs


## Permission for dynamoDB
