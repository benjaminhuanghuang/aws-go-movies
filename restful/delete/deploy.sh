# Create lambda function
aws lambda create-function --function-name DeleteMovie \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::173116748583:role/DeleteMovieRole \
--environment Variables={TABLE_NAME=ben-movies} \
--region us-west-2


# Create DELETE method for API_ID, RESOURCE_ID
aws apigateway put-method --rest-api-id kgs89l6hx4 \
--resource-id wxovxk \
--http-method DELETE \
--authorization-type "NONE" \
--region us-west-2

# set the DeleteMovie function as the target for the DELETE method
aws apigateway put-integration \
--rest-api-id kgs89l6hx4 \
--resource-id wxovxk \
--http-method DELETE \
--type AWS_PROXY \
--integration-http-method DELETE \
--uri arn:aws:lambda:us-west-2:173116748583:function:DeleteMovie
--region us-west-2

#tell the API Gateway to skip any translation and to pass it without any modification the response returned by the Lambda function
aws apigateway put-method-response \
--rest-api-id kgs89l6hx4 \
--resource-id wxovxk \
--http-method DELETE \
--status-code 200 \
--response-models '{"application/json": "Empty"}' \
--region us-west-2

# Deploy 
aws apigateway create-deployment \
--rest-api-id kgs89l6hx4 \
--stage-name staging \
--region us-west-2