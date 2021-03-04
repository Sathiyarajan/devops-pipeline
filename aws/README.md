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


# EC2 

# Creating, displaying, and deleting Amazon EC2 key pairs

# to create a keypair

`aws ec2 create-key-pair --key-name bestvm-key --query 'KeyMaterial' --output text > bestvm-key.pem`

# permission change

`chmod 400 bestvm-key.pem`

# list keypairs

`aws ec2 describe-key-pairs --key-name bestvm-key`

{
    "KeyPairs": [
        {
            "KeyPairId": "key-******",
            "KeyFingerprint": "**********",
            "KeyName": "bestvm-key",
            "Tags": []
        }
    ]
}


# delete a keypair

`aws ec2 delete-key-pair --key-name bestvm-key`

# Creating, configuring, and deleting security groups for Amazon EC2

# create Security Group

`aws ec2 create-security-group --group-name ec2-sg --description "Sathya security group"`


{
    "GroupId": "sg-*******"
}


`aws ec2 describe-security-groups --group-names ec2-sg`

{
    "SecurityGroups": [
        {
            "Description": "Sathya security group",
            "GroupName": "ec2-sg",
            "IpPermissions": [],
            "OwnerId": "*******",
            "GroupId": "sg-**********",
            "IpPermissionsEgress": [
                {
                    "IpProtocol": "-1",
                    "IpRanges": [
                        {
                            "CidrIp": "0.0.0.0/0"
                        }
                    ],
                    "Ipv6Ranges": [],
                    "PrefixListIds": [],
                    "UserIdGroupPairs": []
                }
            ],
            "VpcId": "vpc-*****"
        }
    ]
}

# check your ip for CIDR subnetting

`curl https://checkip.amazonaws.com`

60.243.65.159

# create inbound rules

`aws ec2 authorize-security-group-ingress --group-id sg-038e0cde087d0c2c6 --protocol tcp --port 22 --cidr 60.243.65.0/24 `

# list security group information

`aws ec2 describe-security-groups --group-names ec2-sg`

{
    "SecurityGroups": [
        {
            "Description": "Sathya security group",
            "GroupName": "ec2-sg",
            "IpPermissions": [
                {
                    "FromPort": 22,
                    "IpProtocol": "tcp",
                    "IpRanges": [
                        {
                            "CidrIp": "60.243.65.0/24"
                        }
                    ],
                    "Ipv6Ranges": [],
                    "PrefixListIds": [],
                    "ToPort": 22,
                    "UserIdGroupPairs": []
                }
            ],
            "OwnerId": "*****",
            "GroupId": "sg-*******",
            "IpPermissionsEgress": [
                {
                    "IpProtocol": "-1",
                    "IpRanges": [
                        {
                            "CidrIp": "0.0.0.0/0"
                        }
                    ],
                    "Ipv6Ranges": [],
                    "PrefixListIds": [],
                    "UserIdGroupPairs": []
                }
            ],
            "VpcId": "vpc-*****"
        }
    ]
}

# to delete a security group

`aws ec2 delete-security-group --group-id `

`aws ec2 delete-security-group --group-name`

# Launching, listing, and terminating Amazon EC2 instances

# create a EC2 instance:

`aws ec2 run-instances --image-id ami-****** --count 1 --instance-type t2.micro --key-name bestvm-key --security-group-ids sg-******`

{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-0eeb03e72075b9bcc",
            "InstanceId": "i-*******",
            "InstanceType": "t2.micro",
            "KeyName": "bestvm-key",
            "LaunchTime": "2021-03-04T17:59:43.000Z",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "ap-south-1a",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-********.ap-south-1.compute.internal",
            "PrivateIpAddress": "********",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-******",
            "VpcId": "vpc-*****",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "*************",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2021-03-04T17:59:43.000Z",
                        "AttachmentId": "eni-attach-******",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching"
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "ec2-sg",
                            "GroupId": "sg-*********"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "********",
                    "NetworkInterfaceId": "eni-*******",
                    "OwnerId": "*********",
                    "PrivateDnsName": "ip-*******.ap-south-1.compute.internal",
                    "PrivateIpAddress": "************",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-*****.ap-south-1.compute.internal",
                            "PrivateIpAddress": "**********"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-******",
                    "VpcId": "vpc-*******",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/xvda",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "ec2-sg",
                    "GroupId": "sg-**********"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 1
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled"
            }
        }
    ],
    "OwnerId": "********",
    "ReservationId": "r-********"
}

# tag & name creation for the ec2 instance

`aws ec2 create-tags --resources i-0c254c9fe5f585deb --tags Key=Name,Value=SathyaLinux`

# list ec2 instances by filtering

`aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"`


`aws ec2 describe-instances --filters "Name=tag:Name,Values=SathyaLinux"`

`aws ec2 terminate-instances --instance-ids i-0c254c9fe5f585deb`


# yet to do

`aws ec2

aws ec2 describe-instances

aws ec2 modify-instance-attribute

aws ec2 start-instances

aws ec2 stop-instances

aws ec2 wait instance-running

aws ec2 wait instance-stopped`
