bigbluebutton
=============

# Deployment tools

Manifests / modules to help the deploy of BigBlueButton on Ubuntu 12.04 with either Ansible or Puppet.

# Background

BigBlueButton provides multimedia conferencing services with screen/document sharing too.

A healthcare client commissioned Tactix4 to build a virtual machine with BBB for a pilot. We built a new Ubuntu 10.04 LTS VM and installed BBB in our datacentre in about 3 hours. Simples.

In order for the Client to use BBB for online consultations as part of a mental health programme we needed to deploy BBB inside the client infrastructure. And on Ubuntu 12.04.

This took some hacking.....

We reviewed the instructions ( here https://code.google.com/p/bigbluebutton/wiki/InstallationUbuntu ) for the 10.04 LTS build and wherever we ran into a problem due to a version/package/distro missmatch we hacked at a few different methods until we found what worked.

## Our notes for 12.04 LTS follow:

+ Set proxy globally in /etc/environment
+ Download the bbb repo file and signing key
+ Remove any openoffice packages, install the stub package for OO, install libreoffice
+ Get Ruby Version Manager, use it to install ruby 1.9.2-head
+ Install all ruby gems for BBB under the root account
+ Install swftools
+ Build ffmpeg from source and install
+ Install BigBlueButton. This will likely fail due to ruby/gem issues. Watch for broken symlinks etc.
+ Prevent BBB packages from searching for gems. Grep and edit files in /var/lib/dpkg/info/bbb- for gem install statements and remove those sections of the script (make a backup first though!). See bbb-install.sh for notes.
+ Run apt-get install -f again to fixup the BBB packages.

## Configure BBB

Surely now it works, right? If so run sudo bbb-conf --check to verify all is ready. Bounce the server and try and open the BBB service.

# HTTPS

We needed to run the webservices over HTTPS. Again, a little hacking here.

+ Ensure the server /etc/hosts file includes the external host you want to use
+ Run bbb-conf --setip bbb.publichost.tld to configure BBB scripts with the hostname
+ Set NGINX to use HTTPS and to run on 443
+ Edit the scripts, e.g. for the demo, changing joinURL.startsWith from http:// to https://

See http-switcher.sh
