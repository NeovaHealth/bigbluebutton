# check for existing openofficepackes
dpkg -l |grep openoffice|cut -d ' ' -f 3

# remove if required
for i in `dpkg -l |grep openoffice|cut -d ' ' -f 3`; do sudo apt-get remove $i; done

# Get stub package
wget http://bigbluebutton.googlecode.com/files/openoffice.org_1.0.4_all.deb
sudo dpkg -i openoffice.org_1.0.4_all.deb

# install ppa-foo
sudo apt-get install python-software-properties

# add ppa for libraoffice
sudo apt-add-repository ppa:libreoffice/libreoffice-4-0

# update
sudo apt-get update

# install
sudo apt-get install libreoffice-common
sudo apt-get install libreoffice
