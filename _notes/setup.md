## install python and pip
```

```

## install awscli
```
  pip install --upgrade awscli
  aws --version
```


## Setup awscli
- Create an aws IAM user to get user credentials

- Setup credentials
```
  aws configure    # input config and credentials
  ls ~/.aws
```
This operation will generate config files ~/.aws/credentials and ~/.aws/config


## Setup Go
```
export GOROOT=PATH/go
export PATH=$PATH:$GOROOT/bin

source ~/.bash_profile

go get github.com/aws/aws-lambda-go/lambda
```