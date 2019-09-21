aws lambda create-function --function-name InsertMovie \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::173116748583:role/InsertMovieRole \
--region us-west-2