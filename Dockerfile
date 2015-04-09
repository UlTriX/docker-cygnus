FROM centos7
RUN cat > /etc/yum.repos.d/fiware.repo <<EOL
[Fiware]
name=FIWARE repository
baseurl=http://repositories.testbed.fi-ware.eu/repo/rpm/x86_64/
gpgcheck=0
enabled=1
EOL
RUN yum install cygnus
