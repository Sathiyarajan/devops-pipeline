# cloud computing overview

![image](https://user-images.githubusercontent.com/16596464/111073831-4cd11180-8506-11eb-9ce3-8c8da42bfaf4.png)


# AWS Overview

![image](https://user-images.githubusercontent.com/16596464/111073697-a553df00-8505-11eb-96c8-397f27bd41fd.png)


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


### 1. AWS Account Creation:

a. Click on below given URL to create a new AWS Account.

https://signin.aws.amazon.com/signin?redirect_uri=https%3A%2F%2Fportal.aws.amazon.com%2Fbilling%2Fsignup%3Fredirect_url%3Dhttps%253A%252F%252Faws.amazon.com%252Fregistration-confirmation%26state%3DhashArgs%2523%26isauthcode%3Dtrue&client_id=arn%3Aaws%3Aiam%3A%3A015428540659%3Auser%2Fawssignupportal&forceMobileApp=0

b. Provide the necessary information as like below screenshot for creating a new account.

![image](https://user-images.githubusercontent.com/16596464/110150822-b023bb00-7e05-11eb-9950-757a3dc9ab7b.png)
![image](https://user-images.githubusercontent.com/16596464/110150884-c92c6c00-7e05-11eb-8242-396f573055a1.png)
![image](https://user-images.githubusercontent.com/16596464/110151055-fe38be80-7e05-11eb-9248-eba22e69c567.png)
![image](https://user-images.githubusercontent.com/16596464/110151137-1dcfe700-7e06-11eb-8359-b0aed00a75ee.png)

After providing Contact information, provide Debit / Credit Card Information in Payment Information tab.
d. On 4th Step, Identity Verification needs to be carried out by typing PIN on your mobile after receiving a call from AWS.
e. Choose the Support Plan as Basic and Click to proceed further.
f. Sometimes, Account registration would take 24 hours of time and 2Rs INR would be deducted from your bank and it would be credited back to your account.


### IAM -> Add user -> Assign groups -> Add permissions & copy the onetime generated 

`aws_access_key_id = **********`
`aws_secret_access_key = *************************`

### AWS CLI commands: https://docs.aws.amazon.com/cli/latest/reference/ 

![image](https://user-images.githubusercontent.com/16596464/110151603-ae0e2c00-7e06-11eb-8128-192fc77e51d8.png)
![image](https://user-images.githubusercontent.com/16596464/110151671-c4b48300-7e06-11eb-8ddc-73aeb64337de.png)
![image](https://user-images.githubusercontent.com/16596464/110151687-c8e0a080-7e06-11eb-8d93-25bf2745bf99.png)
![image](https://user-images.githubusercontent.com/16596464/110151702-ced68180-7e06-11eb-9727-a5150ffa2bfb.png)
![image](https://user-images.githubusercontent.com/16596464/110151717-d39b3580-7e06-11eb-86c0-de14e6c7b256.png)
![image](https://user-images.githubusercontent.com/16596464/110151726-d6962600-7e06-11eb-96a1-3d0fbcd91d4e.png)
![image](https://user-images.githubusercontent.com/16596464/110151742-d9911680-7e06-11eb-8c4e-7bb15871d7f7.png)
![image](https://user-images.githubusercontent.com/16596464/110151754-dc8c0700-7e06-11eb-8bd3-bd24bbc9fa37.png)
![image](https://user-images.githubusercontent.com/16596464/110151766-e01f8e00-7e06-11eb-8e3c-d81f24f400bd.png)
![image](https://user-images.githubusercontent.com/16596464/110151778-e4e44200-7e06-11eb-9ae5-b3d9d3d69a65.png)

### Note: After Sign in, it would prompt to change the password. Provide the new password for this sub account and proceed with next steps.

## IAM -> Amazon Resource Name -> through CLI.

### create user

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

### Create Login credentials

`aws iam create-login-profile --generate-cli-skeleton > create-login-profile.json`

`aws iam create-login-profile --cli-input-json file://create-login-profile.json`

{
    "LoginProfile": {
        "UserName": "raj",
        "CreateDate": "2021-03-04T17:12:02Z",
        "PasswordResetRequired": true
    }
}

### Access Key
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

### Group
`aws iam add-user-to-group --user-name raj --group-name AdminAccess`

### Policy
`aws iam attach-user-policy --policy-arn arn:aws:iam:ACCOUNT-ID:aws:policy/AdministratorAccess --user-name Alice (optional)`

### Note: Dont add user to the policy add user to Group instead.

### to list the users

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

## EC2 Overview 

### EC2 instance types

![image](https://user-images.githubusercontent.com/16596464/110200976-c6be2680-7e86-11eb-91b6-e24ff9ad4f11.png)

 
## General Purpose (CPU HDD)

### t2(tiny) instance type: 

`learning & start of development, some basic CPU and memory usage applications`

### m5(medium) instance type: 

`more consistent workloads, solid state drives (SSD)`

# Compute Optimized (CPU SSD)

### c5(compute) instance type:

`scientific modelling, intensive machine learning, or multiplayer gaming SSD backed`

# Memory Optimized (CPU SSD)

### r4 (RAM) instance type:

`in-memory databases, real-time processing of unstructured big data, or Hadoop/Spark clusters`

### x1e(xtreme) instance type:

`full in-memory application or a big data processing engine like Apache Spark or Presto.`

# Accelerated Computing (GPU)

### p3(pictures) instance type:

`computational fluid dynamics, computational finance, seismic analysis, speech recognition, autonomous vehicles`

# Storage Optimized

### h1(HDD) instance type: 

`distributed file systems, network file systems, or data processing applications.`

### i3(IOPS) instance type: 
`SSD backed,  NoSQL databases, in-memory databases, Elasticsearch`

## Note: to check a IOPS of a disk run the below commands

### sudo hdparm -Tt /dev/sda

/dev/sda:
 Timing cached reads:   20132 MB in  1.99 seconds = 10092.59 MB/sec
 Timing buffered disk reads: 564 MB in  3.01 seconds = 187.55 MB/sec
 
### dd if=/dev/zero of=/tmp/output bs=8k count=10k; rm -f /tmp/output

1024+0 records in
1024+0 records out
402653184 bytes (403 MB, 384 MiB) copied, 3.0272 s, 133 MB/s

### d2(dense) instance type:

`Massively Parallel Processing (MPP), MapReduce and Hadoop distributed computing`

### Creating, displaying, and deleting Amazon EC2 key pairs

![image](https://user-images.githubusercontent.com/16596464/111019637-ae9a5a00-83e6-11eb-82f8-c36453952895.png)

![image](https://user-images.githubusercontent.com/16596464/111019638-b3f7a480-83e6-11eb-8a48-b232f0dc4195.png)

![image](https://user-images.githubusercontent.com/16596464/111019641-b6f29500-83e6-11eb-8bd8-4dde41ed7d5a.png)

![image](https://user-images.githubusercontent.com/16596464/111019642-b8bc5880-83e6-11eb-8d2e-cffed789a669.png)

![image](https://user-images.githubusercontent.com/16596464/111019644-bbb74900-83e6-11eb-9c17-791bca98f750.png)

![image](https://user-images.githubusercontent.com/16596464/111019646-beb23980-83e6-11eb-8366-596d993b3282.png)

![image](https://user-images.githubusercontent.com/16596464/111019648-c1ad2a00-83e6-11eb-892d-721529046ade.png)

![image](https://user-images.githubusercontent.com/16596464/111019650-c376ed80-83e6-11eb-9290-aac5ff7ead1a.png)

![image](https://user-images.githubusercontent.com/16596464/111019653-cc67bf00-83e6-11eb-885e-4e4ab46a4dd1.png)

![image](https://user-images.githubusercontent.com/16596464/111019658-ceca1900-83e6-11eb-8ef0-90d8a8063894.png)

![image](https://user-images.githubusercontent.com/16596464/111019663-d689bd80-83e6-11eb-90bf-f64441e95098.png)

![image](https://user-images.githubusercontent.com/16596464/111019665-d984ae00-83e6-11eb-861f-9b47dffd7d1b.png)

![image](https://user-images.githubusercontent.com/16596464/111019670-de496200-83e6-11eb-9a06-36486254b0e4.png)

![image](https://user-images.githubusercontent.com/16596464/111019673-e0abbc00-83e6-11eb-9840-ab1f47a61ee3.png)

![image](https://user-images.githubusercontent.com/16596464/111019678-e99c8d80-83e6-11eb-8f48-e1730df357b3.png)

![image](https://user-images.githubusercontent.com/16596464/111019689-eef9d800-83e6-11eb-9137-664f56513275.png)

![image](https://user-images.githubusercontent.com/16596464/111019694-f1f4c880-83e6-11eb-9c69-0b669908c24a.png)

![image](https://user-images.githubusercontent.com/16596464/111019695-f4572280-83e6-11eb-87ff-a9bb1d16fc1b.png)

![image](https://user-images.githubusercontent.com/16596464/111019696-f6b97c80-83e6-11eb-9580-fba8899dd330.png)

![image](https://user-images.githubusercontent.com/16596464/111019699-f9b46d00-83e6-11eb-892c-e0702585acc6.png)

![image](https://user-images.githubusercontent.com/16596464/111019701-fb7e3080-83e6-11eb-8fe5-34340dd3e267.png)

![image](https://user-images.githubusercontent.com/16596464/111019704-ff11b780-83e6-11eb-9993-2ce0a82bc3b6.png)

![image](https://user-images.githubusercontent.com/16596464/111019705-00db7b00-83e7-11eb-81eb-b21476807d23.png)

![image](https://user-images.githubusercontent.com/16596464/111019708-033dd500-83e7-11eb-86e5-b388ff4f2fcf.png)

![image](https://user-images.githubusercontent.com/16596464/111019711-06d15c00-83e7-11eb-9fe9-616351d36fc8.png)

![image](https://user-images.githubusercontent.com/16596464/111019716-09cc4c80-83e7-11eb-9337-69f36c0a74c1.png)

![image](https://user-images.githubusercontent.com/16596464/111019714-089b1f80-83e7-11eb-85ef-533be2876082.png)

![image](https://user-images.githubusercontent.com/16596464/111019719-105ac400-83e7-11eb-8c63-306887a43595.png)

![image](https://user-images.githubusercontent.com/16596464/111019727-19e42c00-83e7-11eb-90cb-bc052d6fa0ba.png)

![image](https://user-images.githubusercontent.com/16596464/111019735-1ea8e000-83e7-11eb-9f00-869f9c398e37.png)

![image](https://user-images.githubusercontent.com/16596464/111019722-1355b480-83e7-11eb-9c74-1c6cfde0f5f0.png)

![image](https://user-images.githubusercontent.com/16596464/111019734-1d77b300-83e7-11eb-9c3d-ee39d6e88de5.png)

![image](https://user-images.githubusercontent.com/16596464/111019733-1d77b300-83e7-11eb-87c5-6965a347e1b0.png)

![image](https://user-images.githubusercontent.com/16596464/111019739-236d9400-83e7-11eb-93d7-3123995dfa6b.png)

![image](https://user-images.githubusercontent.com/16596464/111019723-1486e180-83e7-11eb-8715-ae4013282a40.png)

![image](https://user-images.githubusercontent.com/16596464/111019750-28cade80-83e7-11eb-8516-a18d72a71504.png)

![image](https://user-images.githubusercontent.com/16596464/111019742-249ec100-83e7-11eb-8896-e5bb25a0f866.png)

![image](https://user-images.githubusercontent.com/16596464/111019746-26688480-83e7-11eb-8b06-749ec60ddb45.png)

## AWS CLI

### to create a keypair

`aws ec2 create-key-pair --key-name bestvm-key --query 'KeyMaterial' --output text > bestvm-key.pem`

### permission change

`chmod 400 bestvm-key.pem`

### list keypairs

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


### delete a keypair

`aws ec2 delete-key-pair --key-name bestvm-key`

### Creating, configuring, and deleting security groups for Amazon EC2

### create Security Group

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

### check your ip for CIDR subnetting

`curl https://checkip.amazonaws.com`

60.243.65.159

### create inbound rules ingress & egress

`aws ec2 authorize-security-group-ingress --group-id sg-038e0cde087d0c2c6 --protocol tcp --port 22 --cidr 60.243.65.0/24 `

### list security group information

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

### to delete a security group

`aws ec2 delete-security-group --group-id `

`aws ec2 delete-security-group --group-name`

### Launching, listing, and terminating Amazon EC2 instances

### create a EC2 instance:

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

### tag & name creation for the ec2 instance

`aws ec2 create-tags --resources i-0c254c9fe5f585deb --tags Key=Name,Value=SathyaLinux`

### list ec2 instances by filtering

`aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"`


`aws ec2 describe-instances --filters "Name=tag:Name,Values=SathyaLinux"`

`aws ec2 terminate-instances --instance-ids i-0c254c9fe5f585deb`

#  S3 - Simple Storage Service

## Console

![image](https://user-images.githubusercontent.com/16596464/111073274-24e0ae80-8504-11eb-817b-bc97d9b7484f.png)

![image](https://user-images.githubusercontent.com/16596464/111073278-27db9f00-8504-11eb-8249-421b5486494c.png)

![image](https://user-images.githubusercontent.com/16596464/111073282-2ad68f80-8504-11eb-8303-c8a5cf98ee33.png)

![image](https://user-images.githubusercontent.com/16596464/111073286-2dd18000-8504-11eb-9154-f12c58fe63c0.png)

![image](https://user-images.githubusercontent.com/16596464/111073288-30cc7080-8504-11eb-9e0e-9a11981f8649.png)

![image](https://user-images.githubusercontent.com/16596464/111073291-32963400-8504-11eb-8c5f-c89d06cd5a64.png)

![image](https://user-images.githubusercontent.com/16596464/111073293-34f88e00-8504-11eb-8a1e-d9b2580f6e23.png)

![image](https://user-images.githubusercontent.com/16596464/111073296-36c25180-8504-11eb-9771-ef07a05a15ee.png)

![image](https://user-images.githubusercontent.com/16596464/111073300-3924ab80-8504-11eb-9dba-80c567dda68f.png)

![image](https://user-images.githubusercontent.com/16596464/111073301-3b870580-8504-11eb-8b47-8f794c7a58ca.png)

![image](https://user-images.githubusercontent.com/16596464/111073305-3de95f80-8504-11eb-8802-25695a99fb9c.png)

![image](https://user-images.githubusercontent.com/16596464/111073311-417ce680-8504-11eb-9df5-3b4dcf6fa062.png)

![image](https://user-images.githubusercontent.com/16596464/111073316-43df4080-8504-11eb-8020-45557c07606d.png)

![image](https://user-images.githubusercontent.com/16596464/111073330-4e99d580-8504-11eb-85e5-59484cb3c087.png)

![image](https://user-images.githubusercontent.com/16596464/111073332-4fcb0280-8504-11eb-9500-978e298c8ad5.png)

![image](https://user-images.githubusercontent.com/16596464/111073328-4b064e80-8504-11eb-97ad-e84b74b37fea.png)

![image](https://user-images.githubusercontent.com/16596464/111073339-52c5f300-8504-11eb-8531-755ef5baa12e.png)

![image](https://user-images.githubusercontent.com/16596464/111073325-493c8b00-8504-11eb-8bb8-7cd611ec340a.png)

![image](https://user-images.githubusercontent.com/16596464/111073344-55c0e380-8504-11eb-91d2-584c99c0121d.png)



# AWS CLI - S3 commands quick reference,

### s3 make bucket (create bucket)
```
aws s3 mb s3://sathyadev-ap-south-1-bucket --region us-west-2
```

### s3 remove bucket

```
aws s3 rb s3://sathyadev-ap-south-1-bucket
aws s3 rb s3://sathyadev-ap-south-1-bucket --force
```

### s3 ls commands

```
aws s3 ls
aws s3 ls s3://sathyadev-ap-south-1-bucket
aws s3 ls s3://sathyadev-ap-south-1-bucket --recursive
aws s3 ls s3://sathyadev-ap-south-1-bucket --recursive  --human-readable --summarize
```

### s3 cp command local machine to s3 and vice versa.

```
aws s3 cp getdata.php s3://sathyadev-ap-south-1-bucket
aws s3 cp /local/dir/data s3://sathyadev-ap-south-1-bucket --recursive
aws s3 cp s3://sathyadev-ap-south-1-bucket/getdata.php /local/dir/data
aws s3 cp s3://sathyadev-ap-south-1-bucket/ /local/dir/data --recursive
```

### s3 cp s3 to s3

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/init.xml s3://backup-bucket
aws s3 cp s3://sathyadev-ap-south-1-bucket s3://backup-bucket --recursive
```

### s3 mv commands move s3-local

```
aws s3 mv source.json s3://sathyadev-ap-south-1-bucket
aws s3 mv s3://sathyadev-ap-south-1-bucket/getdata.php /home/project
aws s3 mv s3://sathyadev-ap-south-1-bucket/source.json s3://backup-bucket
```

### s3 mv s3-s3

```
aws s3 mv /local/dir/data s3://sathyadev-ap-south-1-bucket/data --recursive
aws s3 mv s3://sathyadev-ap-south-1-bucket s3://backup-bucket --recursive
```

### s3 rm commands

```
aws s3 rm s3://sathyadev-ap-south-1-bucket/queries.txt
aws s3 rm s3://sathyadev-ap-south-1-bucket --recursive
```

### s3 sync commands

```
aws s3 sync backup s3://sathyadev-ap-south-1-bucket
aws s3 sync s3://sathyadev-ap-south-1-bucket/backup /tmp/backup
aws s3 sync s3://sathyadev-ap-south-1-bucket s3://backup-bucket
```

```
aws s3 mb s3://sathyadev-ap-south-1-bucket --region us-west-2
```

### Delete S3 Bucket (That is empty)

```
aws s3 rb s3://sathyadev-ap-south-1-bucket
aws s3 rb s3://sathyadev-ap-south-1-bucket1
```


### aws s3 rb s3://sathyadev-ap-south-1-bucket

```
aws s3 rb s3://sathyadev-ap-south-1-bucket --force
delete: s3://sathyadev-ap-south-1-bucket/demo/getdata.php
delete: s3://sathyadev-ap-south-1-bucket/ipallow.txt
delete: s3://sathyadev-ap-south-1-bucket/demo/servers.txt
delete: s3://sathyadev-ap-south-1-bucket/demo/
remove_bucket: sathyadev-ap-south-1-bucket
```

### List All S3 Buckets

To view all the buckets owned by the user, execute the following ls command.

```
aws s3 ls s3://sathyadev-ap-south-1-bucket
                           PRE config/
                           PRE data/
2019-04-07 11:38:20         13 getdata.php
2019-04-07 11:38:20       2546 ipallow.php
2019-04-07 11:38:20          9 license.php
2019-04-07 11:38:20       3677 servers.txt

```

### List all Objects in a Bucket Recursively

```
aws s3 ls s3://sathyadev-ap-south-1-bucket --recursive
2019-04-07 11:38:19       2777 config/init.xml
2019-04-07 11:38:20         52 config/support.txt
2019-04-07 11:38:20       1758 data/database.txt
2019-04-07 11:38:20         13 getdata.php
2019-04-07 11:38:20       2546 ipallow.php
2019-04-07 11:38:20          9 license.php
2019-04-07 11:38:20       3677 servers.txt
```

### Total Size of All Objects in a S3 Bucket

```
aws s3 ls s3://sathyadev-ap-south-1-bucket --recursive  --human-readable --summarize
2019-04-07 11:38:19    2.7 KiB config/init.xml
2019-04-07 11:38:20   52 Bytes config/support.txt
2019-04-07 11:38:20    1.7 KiB data/database.txt
2019-04-07 11:38:20   13 Bytes getdata.php
2019-04-07 11:38:20    2.5 KiB ipallow.php
2019-04-07 11:38:20    9 Bytes license.php
2019-04-07 11:38:20    3.6 KiB servers.txt
```

### copy the getdata.php to a S3 bucket with a different name, do the following

```
aws s3 cp getdata.php s3://sathyadev-ap-south-1-bucket/getdata-new.php
upload: ./getdata.php to s3://sathyadev-ap-south-1-bucket/getdata-new.php
```

```
aws s3 cp /home/project/getdata.php s3://sathyadev-ap-south-1-bucket
upload: /home/project/getdata.php to s3://sathyadev-ap-south-1-bucket/getdata.php
```

### Copy Local Folder with all Files to S3 Bucket, In this example, we are copying all the files from the “data” folder that is under /home/sathya directory to S3 bucket

```
aws s3 cp data s3://sathyadev-ap-south-1-bucket --recursive
upload: data/parameters.txt to s3://sathyadev-ap-south-1-bucket/parameters.txt
upload: data/common.txt to s3://sathyadev-ap-south-1-bucket/common.txt
```

```
aws s3 cp data s3://sathyadev-ap-south-1-bucket/data --recursive
upload: data/parameters.txt to s3://sathyadev-ap-south-1-bucket/data/parameters.txt
upload: data/common.txt to s3://sathyadev-ap-south-1-bucket/data/common.txt
```

### Download a File from S3 Bucket

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/getdata.php .
download: s3://sathyadev-ap-south-1-bucket/getdata.php to ./getdata.php
```

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/getdata.php getdata-local.php
download: s3://sathyadev-ap-south-1-bucket/getdata.php to ./getdata-local.php
Download the file from S3 bucket to a specific folder in local machine as shown below. The following will download getdata.php file to /home/project folder on local machine.
```

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/getdata.php /home/project/
download: s3://sathyadev-ap-south-1-bucket/getdata.php to ../../home/project/getdata.php
```

### Download All Files Recursively from a S3 Bucket (Using Copy)


```
aws s3 cp s3://sathyadev-ap-south-1-bucket/ . --recursive
download: s3://sathyadev-ap-south-1-bucket/getdata.php to ./getdata.php
download: s3://sathyadev-ap-south-1-bucket/config/init.xml ./config/init.xml
```

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/ /home/sathya/sathyadev-ap-south-1-bucket --recursive
download: s3://sathyadev-ap-south-1-bucket/getdata.php to ../../home/sathya/sathyadev-ap-south-1-bucket/getdata.php
download: s3://sathyadev-ap-south-1-bucket/config/init.xml to ../../home/sathya/sathyadev-ap-south-1-bucket/config/init.xml
```

### Copy a File from One Bucket to Another Bucket

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/config/init.xml s3://backup-bucket
copy: s3://sathyadev-ap-south-1-bucket/config/init.xml to s3://backup-bucket/init.xml
```

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/config/init.xml s3://backup-bucket/config
copy: s3://sathyadev-ap-south-1-bucket/config/init.xml to s3://backup-bucket/config/init.xml
```

```
aws s3 cp s3://sathyadev-ap-south-1-bucket/test.txt s3://backup-bucket-777
copy failed: s3://sathyadev-ap-south-1-bucket/test.txt to s3://backup-bucket-777/test.txt An error occurred (NoSuchBucket) when calling the CopyObject operation: The specified bucket does not exist
```

```
aws s3 cp s3://sathyadev-ap-south-1-bucket s3://backup-bucket --recursive
copy: s3://sathyadev-ap-south-1-bucket/getdata.php to s3://backup-bucket/getdata.php
copy: s3://sathyadev-ap-south-1-bucket/config/init.xml s3://backup-bucket/config/init.xml
```


### Move a File from Local to S3 Bucket

```
ls -l source.json
-rw-r--r--  1 ramesh  sysadmin  1404 Apr  2 13:25 source.json

aws s3 mv source.json s3://sathyadev-ap-south-1-bucket
move: ./source.json to s3://sathyadev-ap-south-1-bucket/source.json
As you see the file doesn’t exists on the local machine after the move. Its only on S3 bucket now.

ls -l source.json
ls: source.json: No such file or directory
```

### Move a File from S3 Bucket to Local

```
aws s3 ls s3://sathyadev-ap-south-1-bucket/getdata.php
2019-04-06 06:24:29       1758 getdata.php
```

```
aws s3 mv s3://sathyadev-ap-south-1-bucket/getdata.php /home/project
move: s3://sathyadev-ap-south-1-bucket/getdata.php to /home/project/getdata.php

aws s3 ls s3://sathyadev-ap-south-1-bucket/getdata.php
```

### Move a File from One S3 Bucket to Another S3 Bucket
Before the move, the file source.json is in sathyadev-ap-south-1-bucket.

```
aws s3 ls s3://sathyadev-ap-south-1-bucket/source.json
2019-04-06 06:51:39       1404 source.json
This file is not in backup-bucket.
```

### Move the file from sathyadev-ap-south-1-bucket to backup-bucket.

```
aws s3 mv s3://sathyadev-ap-south-1-bucket/source.json s3://backup-bucket

move: s3://sathyadev-ap-south-1-bucket/source.json to s3://backup-bucket/source.json
Now, the file is only on the backup-bucket.
```

```
aws s3 ls s3://sathyadev-ap-south-1-bucket/source.json

aws s3 ls s3://backup-bucket/source.json
2019-04-06 06:56:00       1404 source.json
```

### Move All Files from a Local Folder to S3 Bucket

```
ls -1 data
dnsrecords.txt
parameters.txt
dev-setup.txt
error.txt

aws s3 mv data s3://sathyadev-ap-south-1-bucket/data --recursive
move: data/dnsrecords.txt to s3://sathyadev-ap-south-1-bucket/data/dnsrecords.txt
move: data/parameters.txt to s3://sathyadev-ap-south-1-bucket/data/parameters.txt
move: data/dev-setup.txt to s3://sathyadev-ap-south-1-bucket/data/dev-setup.txt
move: data/error.txt to s3://sathyadev-ap-south-1-bucket/data/error.txt
```

### Move All Files from S3 Bucket to Local Folder

```
ls -1 localdata

aws s3 mv s3://sathyadev-ap-south-1-bucket/data/ localdata --recursive
move: s3://sathyadev-ap-south-1-bucket/data/dnsrecords.txt to localdata/dnsrecords.txt
move: s3://sathyadev-ap-south-1-bucket/data/parameters.txt to localdata/parameters.txt
move: s3://sathyadev-ap-south-1-bucket/data/dev-setup.txt to localdata/dev-setup.txt
move: s3://sathyadev-ap-south-1-bucket/data/error.txt to localdata/error.txt

aws s3 ls s3://sathyadev-ap-south-1-bucket/data/

ls -1 localdata

dnsrecords.txt
parameters.txt
dev-setup.txt
error.txt

```
### Move All Files from One S3 Bucket to Another S3 Bucket

```
aws s3 mv s3://sathyadev-ap-south-1-bucket s3://backup-bucket --recursive
move: s3://sathyadev-ap-south-1-bucket/dev-setup.txt to s3://backup-bucket/dev-setup.txt
move: s3://sathyadev-ap-south-1-bucket/dnsrecords.txt to s3://backup-bucket/dnsrecords.txt
move: s3://sathyadev-ap-south-1-bucket/error.txt to s3://backup-bucket/error.txt
move: s3://sathyadev-ap-south-1-bucket/parameters.txt to s3://backup-bucket/parameters.txt
```

### Delete a File from S3 Bucket

```
aws s3 rm s3://sathyadev-ap-south-1-bucket/queries.txt
delete: s3://sathyadev-ap-south-1-bucket/queries.txt
```

### Delete All Objects from S3 buckets

```
aws s3 rm s3://sathyadev-ap-south-1-bucket
```

### To delete all the files from a S3 bucket, use the –recursive option as show nbelow.

```
aws s3 rm s3://sathyadev-ap-south-1-bucket --recursive
delete: s3://sathyadev-ap-south-1-bucket/dnsrecords.txt
delete: s3://sathyadev-ap-south-1-bucket/common.txt
delete: s3://sathyadev-ap-south-1-bucket/parameters.txt
delete: s3://sathyadev-ap-south-1-bucket/config/init.xml
```

### Sync files from Laptop to S3 Bucket, When you use sync command, it will recursively copies only the new or updated files from the source directory to the destination.

```
aws s3 sync backup s3://sathyadev-ap-south-1-bucket
upload: backup/docker.sh to s3://sathyadev-ap-south-1-bucket/docker.sh
upload: backup/address.txt to s3://sathyadev-ap-south-1-bucket/address.txt
upload: backup/display.py to s3://sathyadev-ap-south-1-bucket/display.py
upload: backup/getdata.php to s3://sathyadev-ap-south-1-bucket/getdata.php
```

```
aws s3 sync backup s3://sathyadev-ap-south-1-bucket/backup
upload: backup/docker.sh to s3://sathyadev-ap-south-1-bucket/backup/docker.sh
upload: backup/address.txt to s3://sathyadev-ap-south-1-bucket/backup/address.txt
upload: backup/display.py to s3://sathyadev-ap-south-1-bucket/backup/display.py
upload: backup/getdata.php to s3://sathyadev-ap-south-1-bucket/backup/getdata.php
```

```
aws s3 sync backup s3://sathyadev-ap-south-1-bucket/backup
```

```
aws s3 sync backup s3://sathyadev-ap-south-1-bucket/backup
upload: backup/newfile.txt to s3://sathyadev-ap-south-1-bucket/backup/newfile.txt
```

### Sync File from S3 bucket to Local

```
aws s3 sync s3://sathyadev-ap-south-1-bucket/backup /tmp/backup
download: s3://sathyadev-ap-south-1-bucket/backup/docker.sh to ../../tmp/backup/docker.sh
download: s3://sathyadev-ap-south-1-bucket/backup/display.py to ../../tmp/backup/display.py
download: s3://sathyadev-ap-south-1-bucket/backup/newfile.txt to ../../tmp/backup/newfile.txt
download: s3://sathyadev-ap-south-1-bucket/backup/getdata.php to ../../tmp/backup/getdata.php
download: s3://sathyadev-ap-south-1-bucket/backup/address.txt to ../../tmp/backup/address.txt
```

### Sync Files from one S3 Bucket to Another S3 Bucket

```
aws s3 sync s3://sathyadev-ap-south-1-bucket s3://backup-bucket
copy: s3://sathyadev-ap-south-1-bucket/backup/newfile.txt to s3://backup-bucket/backup/newfile.txt
copy: s3://sathyadev-ap-south-1-bucket/backup/display.py to s3://backup-bucket/backup/display.py
copy: s3://sathyadev-ap-south-1-bucket/backup/docker.sh to s3://backup-bucket/backup/docker.sh
copy: s3://sathyadev-ap-south-1-bucket/backup/address.txt to s3://backup-bucket/backup/address.txt
copy: s3://sathyadev-ap-south-1-bucket/backup/getdata.php to s3://backup-bucket/backup/getdata.php
```
