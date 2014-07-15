# Changes all the jsps in the demo to use https
# Run once only or things get messy

sed -i s/startsWith\(\"http/startsWith\(\"https/g /var/lib/tomcat6/webapps/demo/*.jsp

# Also check the following files
# Assigning bbb.publichost.tld for web application URL in /var/lib/tomcat6/webapps/bigbluebutton/WEB-INF/classes/bigbluebutton.properties
# Assigning bbb.publichost.tld for api demos in /var/lib/tomcat6/webapps/demo/bbb_api_conf.jsp
# Assigning bbb.publichost.tld for record and playback in /usr/local/bigbluebutton/core/scripts/bigbluebutton.yml
