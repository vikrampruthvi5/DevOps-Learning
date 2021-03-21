import boto3

ec2 = boto3.resource('ec2')

instances = ec2.instances.filter(
    Filters=[{'Name': 'instance-state-name', 'Values': ['running']}])
for instance in instances:
    print(instance.id, instance.instance_type, instance.tags[0]["Value"])

# Arguments
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("status")
args = parser.parse_args()

def week(i):
    switcher={
        "start":'Sunday',
        1:'Monday',
        2:'Tuesday',
        3:'Wednesday',
        4:'Thursday',
        5:'Friday',
        6:'Saturday'
        }
    return switcher.get(i,"Invalid day of week")

week(args.status)