# To install and test everything on the EC2 instance
sudo apt-get update;
sudo apt-get install git;
git clone https://github.com/barry/aws-tensorflow-setup/;
./aws-tensorflow-setup/setup-aws-tensorflow.bash ;
mkdir tf_test_mnist;
cd tf_test_mnist/;
wget https://raw.githubusercontent.com/tensorflow/tensorflow/master/tensorflow/models/image/mnist/convolutional.py;
python convolutional.py;
