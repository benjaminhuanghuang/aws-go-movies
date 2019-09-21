


## Debug
In order to troubleshoot the API Gateway server error, we need to enable logs as follows
1. First, we need to grant the API Gateway access to CloudWatch in order to be able to push API Gateway log events to CloudWatch Logs. Therefore, we need to create a new IAM role named "APIGatewayPushLog".

2. Select an existing policy called AmazonAPIGatewayPushToCloudWatchLogs

3. click the Logs tab and under CloudWatch Settings, click on Enable CloudWatch Logs and select the Log level you want to catch.


Error log will be displayed in CloudWatch Logs Console

