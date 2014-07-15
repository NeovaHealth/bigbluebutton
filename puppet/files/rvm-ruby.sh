# Get RVM, use it to install ruby

# remove all ruby installs / alternatives
sudo apt-get remove --purge ruby*
sudo update-alternatives --remove-all ruby
sudo update-alternatives --remove-all gem

# install rvm
curl -sSL https://get.rvm.io | sudo bash -s stable

# use rvm to install ruby 1.9.2-head
sudo rvm install ruby-1.9.2-head

# run gem install script under root account
# using gem-install-proxy.sh
