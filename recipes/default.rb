
package 'curl'

bash 'install' do
  only_if 'curl --connect-timeout 1 http://169.254.169.254/latest/meta-data/placement/availability-zone'
  code <<-EOF
apt-get install awscli
ruby --version
cd /home/ubuntu
availability_zone = \$(curl --connect-timeout 1 http://169.254.169.254/latest/meta-data/placement/availability-zone)
bucket_name = "aws-codedeploy-$availability_zone"
aws s3 cp s3://$bucket_name/latest/install . --region region-name
chmod +x ./install
./install auto
sudo service codedeploy-agent restart
  EOF
end
