# AWS Regions

| Region Code        | Region Name       | Availability Zones
---------------------|-------------------|--------------------------------------------------------
| us-east-1*         | N. Virginia       | `us-east-1a` `us-east-1b` `us-east-1c` `us-east-1d` `us-east-1e`
| us-east-2          | Ohio              | `us-east-2a` `us-east-2b` `us-east-2c`
| us-west-1*         | N. California     | `us-west-1a` `us-west-1b` `us-west-1c`
| us-west-2	         | Oregon	           | `us-west-2a` `us-west-2b` `us-west-2c`
| eu-west-1	         | Ireland	         | `eu-west-1a` `eu-west-1b` `eu-west-1c`
| eu-central-1	     | Frankfurt	       | `eu-central-1a` `eu-central-1b`
| ap-northeast-1*    | Tokyo	           | `ap-northeast-1a` `ap-northeast-1b` `ap-northeast-1c`
| ap-northeast-2     | Seoul             | `ap-northeast-2a` `ap-northeast-2c`
| ap-southeast-1	   | Singapore	       | `ap-southeast-1a` `ap-southeast-1b`
| ap-southeast-2	   | Sydney	           | `ap-southeast-2a` `ap-southeast-2b` `ap-southeast-2c`
| ap-south-1         | Mumbai            | `ap-south-1a` `ap-south-1b`
| sa-east-1	         | Sao Paulo	       | `sa-east-1a` `sa-east-1b` `sa-east-1c`

\* *To ensure that resources are distributed across the Availability Zones for these regions, they may differ for each AWS account. You can run `aws ec2 describe-availability-zones --region $REGION` to be sure which ones are available to you.*


# IAM -> Add user -> Assign groups -> Add permissions & copy the onetime generated 

`aws_access_key_id = **********`
`aws_secret_access_key = *************************`

# AWS CLI commands: https://docs.aws.amazon.com/cli/latest/reference/ 

# IAM -> Amazon Resource Name -> through CLI.

# create user

`aws iam create-user --user-name raj`

{
    "User": {
        "Path": "/",
        "UserName": "raj",
        "UserId": "***************",
        "Arn": "arn:aws:iam::********:user/raj",
        "CreateDate": "2021-03-04T17:09:58Z"
    }
}

# Create Login credentials

`aws iam create-login-profile --generate-cli-skeleton > create-login-profile.json`

`aws iam create-login-profile --cli-input-json file://create-login-profile.json`

{
    "LoginProfile": {
        "UserName": "raj",
        "CreateDate": "2021-03-04T17:12:02Z",
        "PasswordResetRequired": true
    }
}

# Access Key
`aws iam create-access-key --user-name raj`

{
    "AccessKey": {
        "UserName": "raj",
        "AccessKeyId": "************",
        "Status": "Active",
        "SecretAccessKey": "*************",
        "CreateDate": "2021-03-04T17:10:20Z"
    }
}

# Group
`aws iam add-user-to-group --user-name raj --group-name AdminAccess`

# Policy
`aws iam attach-user-policy --policy-arn arn:aws:iam:ACCOUNT-ID:aws:policy/AdministratorAccess --user-name Alice (optional)`

# Note: Dont add user to the policy add user to Group instead.

# to list the users

aws iam list-users

{
    "Users": [
        {
            "Path": "/",
            "UserName": "raj",
            "UserId": "***********",
            "Arn": "arn:aws:iam::********:user/raj",
            "CreateDate": "2021-03-04T17:09:58Z"
        },
        {
            "Path": "/",
            "UserName": "sathya",
            "UserId": "**********",
            "Arn": "arn:aws:iam::*********:user/sathya",
            "CreateDate": "2021-03-04T16:57:33Z"
        }
    ]
}
