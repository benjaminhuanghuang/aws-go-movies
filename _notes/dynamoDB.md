## Permission for lambda function.
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
- Attach this polich to the role of the lambda function
