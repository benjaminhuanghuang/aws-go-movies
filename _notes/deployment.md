## List
```
aws lambda list-functions --region us-east-1
aws lambda list-functions --query Functions[].FunctionName[]
```

## Create funciton
using zip
```
aws lambda create-function --function-name UpdateMovie \
--description "Update an existing movie" \
--runtime go1.x \
--role arn:aws:iam::ACCOUNT_ID:role/UpdateMovieRole \
--handler main \
--environment Variables={TABLE_NAME=movies} \
--zip-file fileb://./deployment.zip \
--region us-west-2
```

using S3
```
aws lambda create-function --function-name UpdateMovie \
--description "Update an existing movie" \
--runtime go1.x \
--role arn:aws:iam::ACCOUNT_ID:role/UpdateMovieRole \
--handler main \
--environment Variables={TABLE_NAME=movies} \
--code S3Bucket=movies-api-deployment-package,S3Key=deployment.zip \
--region us-east-1
```

## Update 
using zip
```
aws lambda update-function-code --function-name UpdateMovie \
--zip-file fileb://./deployment-1.0.0.zip \
--region us-east-1
```

using S3
```
aws lambda update-function-code --function-name UpdateMovie \
--s3-bucket movies-api-deployment-packages \
--s3-key deployment-1.0.0.zip \
--region us-east-1
```

## Get function configuration
```
aws lambda get-function-configuration --function-name UpdateMovie --region us-west-2
```

## Invoke
invoke lambda and save output to result.json
```
 aws lambda invoke --function-name UpdateMovie --payload file://input.json result.json
```

## Delete lambda function
- delete all function versions and aliases
```
aws lambda delete-function --function-name UpdateMovie
```
- delete a specific version or alias
```
aws lambda delete-function --function-name UpdateMovie --qualifier
```