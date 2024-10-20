import boto3\ncloudwatch = boto3.client('cloudwatch')\nalarm = cloudwatch.put_metric_alarm(AlarmName='HighCPU', MetricName='CPUUtilization')
