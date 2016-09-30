aws ec2 run-instances --image-id ami-fce3c696 --count 1 --instance-type g2.2xlarge --key-name my_aws_key --security-groups my-sg
aws_get_ip
ssh -i ~/.aws/my_aws_key.pem ubuntu@52.91.23.212
