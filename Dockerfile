FROM centos:7
MAINTAINER ultrix "pedro@viurdata.com"

RUN echo "[Fiware]" >> /etc/yum.repos.d/fiware.repo
RUN echo "name=FIWARE repository" >> /etc/yum.repos.d/fiware.repo
RUN echo "baseurl=http://repositories.testbed.fi-ware.eu/repo/rpm/x86_64/" >> /etc/yum.repos.d/fiware.repo
RUN echo "gpgcheck=0" >> /etc/yum.repos.d/fiware.repo
RUN echo "enabled=1" >> /etc/yum.repos.d/fiware.repo

RUN yum -y install cygnus

ADD agent_1.conf /usr/cygnus/conf/agent_1.conf
ADD cygnus_instance_1.conf /usr/cygnus/conf/cygnus_instance_1.conf

RUN service cygnus start
RUN service cygnus status

EXPOSE 5050