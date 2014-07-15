#install libssl0.9.8
sudo apt-get install libssl0.9.8


#install bigbluebutton
sudo apt-get install bigbluebutton

# edit the pre/post install files
# remove refs to gems

# vim /var/lib/dpkg/info/bbb-record-core.preinst
# vim /var/lib/dpkg/info/bbb-record-core.postinst
# vim /var/lib/dpkg/info/bbb-playback-presentation.postinst

# force install to complete
apt-get install -f

# make link to help god to run?
#sudo ln -s /usr/local/rvm/rubies/ruby-1.9.2-head/bin/ruby /usr/bin/ruby1.9.1
