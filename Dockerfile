FROM omnitracs-base-remote-images-virt.jfrog.io/openshift4/ose-jenkins-agent-base:v4.5

# Add repositories for the yum installations
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Installing the necessary packages for compiling ruby
RUN yum -y clean all && \
    yum -y groupinstall "Development Tools" && \
    yum -y install openssl-devel && \
    yum -y install gcc && \
    yum -y install make

# Downloading ruby version 3.1.2
WORKDIR /home/jenkins
RUN wget https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.2.tar.gz && \
    tar xvfvz ruby-3.1.2.tar.gz

#Installing Ruby and the gem gazer
WORKDIR /home/jenkins/ruby-3.1.2
RUN ./configure && \
    make && \
    make install && \
    gem install gazer && \
    gzr version