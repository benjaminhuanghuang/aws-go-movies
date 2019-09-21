aws lambda create-function --function-name FindAllMovies \
--zip-file fileb://./deployment.zip \
--runtime go1.x --handler main \
--role arn:aws:iam::173116748583:role/FindAllMoviesRole \
--region us-west-2