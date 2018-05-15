FROM centos:centos7

MAINTAINER Jamse, Lee <inlineno1@gmail.com>

# yum update
RUN yum -y update
RUN yum -y install epel-release

# ntpdate
RUN yum -y install ntpdate

# unzip
RUN yum -y install unzip

# wget
RUN yum -y install wget

# sudo
RUN yum -y install sudo

# net tool
RUN yum -y install net-tools

# java install (v1.8_172)
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.rpm
RUN rpm -ivh jdk-8u172-linux-x64.rpm && rm jdk-8u172-linux-x64.rpm
