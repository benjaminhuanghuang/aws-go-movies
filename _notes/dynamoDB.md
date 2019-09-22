## Scan Permission for lambda function.
- Create policy for scan "ScanMoviesTable"
```
{
"Version": "2012-10-17",
"Statement": [
{
  "Sid": "1",
  "Effect": "Allow",
  "Action": "dynamodb:Scan",
  "Resource": [
    "arn:aws:dynamodb:us-west-2:173116748583:table/ben-movies/index/ID",
    "arn:aws:dynamodb:us-west-2:173116748583:table/ben-movies"
    ]
  }
  ]
}
```
- Attach this polich to the role "FindAllMovieRole" of the lambda function


## Get item Permission for lambda function.
- Create policy for get item "GetItemMoviesTable"
```
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "1",
"Effect": "Allow",
"Action": "dynamodb:GetItem",
"Resource": "arn:aws:dynamodb:us-west-2:173116748583:table/ben-movies"
}
]
}
```
- Attach this polich to the role "FindOneMovieRole" of the lambda function 


## Insert item Permission for lambda function.
- Create policy for get item "PutItemMoviesTable"
```
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "1",
"Effect": "Allow",
"Action": "dynamodb:PutItem",
"Resource": "arn:aws:dynamodb:us-west-2:173116748583:table/ben-movies"
}
]
}
```
- Attach this polich to the role "InsertMovieRole" of the lambda function 

## Delete item Permission for lambda function.
- Create policy for get item "DeleteItemMoviesTable"
```
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "1",
"Effect": "Allow",
"Action": "dynamodb:DeleteItem",
"Resource": "arn:aws:dynamodb:us-west-2:173116748583:table/ben-movies"
}
]
}
```
- Attach this polich to the role "DeleteMovieRole" of the lambda function 

## Update item Permission for lambda function.
- Create policy for get item "UpdateItemMoviesTable"
```
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "1",
"Effect": "Allow",
"Action": "dynamodb:PutItem",
"Resource": "arn:aws:dynamodb:us-west-2:173116748583:table/ben-movies"
}
]
}
```
- Attach this polich to the role "UpdateMovieRole" of the lambda function 