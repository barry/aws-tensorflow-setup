# Launch instance
aws ec2 run-instances --image-id ami-fce3c696 --count 1 --instance-type g2.2xlarge --key-name my_aws_key --security-groups my-sg
aws_get_ip
ssh -i ~/.aws/my_aws_key.pem ubuntu@52.91.23.212

# Install and test everything on the EC2 instance
sudo apt-get update;
sudo apt-get install git;
git clone https://github.com/barry/aws-tensorflow-setup/;
./aws-tensorflow-setup/setup-aws-tensorflow.bash ;
mkdir tf_test_mnist;
cd tf_test_mnist/;
wget https://raw.githubusercontent.com/tensorflow/tensorflow/master/tensorflow/models/image/mnist/convolutional.py;
python convolutional.py;
