FROM omnitracs-base-remote-images-virt.jfrog.io/openshift4/ose-jenkins-agent-base:v4.5
#FROM jenkins/agent:jdk11
#FROM quay.io/openshift/origin-jenkins-agent-base:4.3.0

#Add repositories for instalattion
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum -y clean all && \
    #yum -y --skip-broken update && \
    yum -y groupinstall "Development Tools" && \
    yum -y install openssl-devel

# USER root
# RUN apt-get -y update && apt-get -y install wget
# RUN apt-get -y install build-essential

RUN wget https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.2.tar.gz
RUN tar xvfvz ruby-3.1.2.tar.gz
WORKDIR /home/jenkins/ruby-3.1.2
RUN pwd
RUN ls
RUN /home/jenkins/ruby-3.1.2/configure
RUN make
RUN make install

RUN ruby -v
RUN gem install gazer
RUN gzr version

#docker build -t jenkins-gazzer .
#docker run --name jenkins-gazzer -it --rm jenkins-gazzer bash