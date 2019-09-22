# Create lambda function
aws lambda create-function --function-name UpdateMovie \
--description "Update an existing movie" \
--zip-file fileb://./deployment.zip \
--runtime go1.x 
--handler main \
--role arn:aws:iam::173116748583:role/UpdateMovieRole \
--environment Variables={TABLE_NAME=ben-movies} \
--region us-west-2

