import boto3\niam = boto3.client('iam')\nresponse = iam.create_user(UserName='new-user')
