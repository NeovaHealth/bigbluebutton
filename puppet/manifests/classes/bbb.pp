class bbb {
 
file { "/root/file.sh":
        mode => 660,
        owner => root,
        group => root,
        source => "puppet:///file.sh";
}

exec { "file...":
command => "/bin/bash /root/file.sh",
 
timeout => "0",
logoutput => "true",
require => [ File["/root/file.sh"],
       ];
}
}
