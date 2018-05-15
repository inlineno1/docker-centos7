FROM centos:centos7

# yum update
RUN yum -y update
RUN yum -y install epel-release

# timezone (Asia/Seoul)
RUN cp -p /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN yum -y install ntpdate
RUN ntpdate time.bora.net

# wget
RUN yum -y install wget

# sudo
RUN yum -y install sudo

# net tool
RUN yum -y install net-tools

# java install (v1.8_172)
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.rpm
RUN rpm -ivh jdk-8u172-linux-x64.rpm && rm jdk-8u172-linux-x64.rpm
