FROM omnitracs-base-remote-images-virt.jfrog.io/openshift4/ose-jenkins-agent-base:v4.5

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y clean all && yum -y install ruby
RUN gem install gazer
RUN gzr version

#FROM omnitracs.jfrog.io/artifactory/base-remote-images-virt/openshift4/ose-jenkins-agent-base:latest
#FROM quay.io/openshift/origin-jenkins-agent-base:4.3.0
#USER root


#RUN cd /etc/yum.repos.d && \
 #   rm -rf . && \
  #  yum upgrade && \
 #   yum update
#RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm


#RUN yum install -y ruby
#RUN wget http://production.cf.rubygems.org/rubygems/rubygems-1.5.0.tgz
#RUN tar xvf rubygems*
#RUN cd rubygems-1.5.0
#RUN ruby setup.rb
#RUN gem install gazer
#RUN yum-config-manager --save --setopt=rhel-fast-datapath.skip_if_unavailable=true
#RUN yum-config-manager --disable rhel-server
#RUN yum -y --setopt=tsflags=nodocs --disableplugin=subscription-manager install ruby rubygems ruby-devel

#The following instrucctions work using as base the official jenkins image
#not the Redhat one
#FROM jenkins/agent:jdk11
#USER root
#RUN apt-get update && apt-get -y install rubygems &&\ 
#gem install gazer
#USER jenkins


#docker build -t jenkins-gazzer .
#docker run --name jenkins-gazzer -it  jenkins-gazzer