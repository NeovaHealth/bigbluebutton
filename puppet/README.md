# Installing BigBlueButton 0.81 on Ubuntu 12.04 LTS

## Background

BigBlueButton provides multimedia conferencing services with screen/document sharing too.

SLAM commissioned Tactix4 to build a virtual machine with BBB for a pilot. We built a new Ubuntu 10.04 LTS VM and installed BBB in our datacentre in about 3 hours. Simples. In order for SLAM to evaluate using BBB to enable online consultations as part of the MyHealthBox programme (see http://www.ehi.co.uk/insight/analysis/893/living-in-a-box ) we needed to deploy BBB inside the SLAM infrastructure. This took some hacking.....

## Building on 12.04 LTS
We reviewed the instructions for the 10.04LTS build and wherever we ran into a problem due to a version/package/distro missmatch we hacked at a few different methods until we found what worked.

Source instructions for 10.04 LTS https://code.google.com/p/bigbluebutton/wiki/InstallationUbuntu

Our notes for 12.04 LTS follow:

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
Surely now it works, right?
If so run sudo bbb-conf --check to verify all is ready. Bounce the server and try and open the BBB service.
