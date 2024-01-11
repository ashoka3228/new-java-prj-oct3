FROM ashor11235/ashok1:2.0
copy *.war /usr/local/tomcat/webapps
EXPOSE 8090
ENTRYPOINT sh /usr/local/tomcat/bin/startup.sh
