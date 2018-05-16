# Create vagrant box running ubuntu 16.04
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
end

# Configure VirtualBox  VM settings
Vagrant.configure("2") do |config|
 config.vm.provider "virtualbox" do |vb|
   vb.memory = "2048"
   vb.cpus = "1"
 end
end

#Install kops
$script = <<-SCRIPT
apt -y install curl
sudo snap install kubectl --classic
sudo curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
sudo chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
sudo apt-get install software-properties-common
sudo apt-add-repository universe
sudo apt-get update
sudo apt-get install python-pip
sudo pip install awscli
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: $script
end


