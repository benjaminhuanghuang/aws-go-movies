aws lambda update-function-code --function-name FindAllMovies \
--zip-file fileb://./deployment.zip \
--region us-west-2


aws lambda update-function-configuration --function-name FindAllMovies \
--environment Variables={TABLE_NAME=ben-movies} \
--region us-west-2