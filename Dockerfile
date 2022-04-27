FROM quay.io/openshift/origin-jenkins-agent-base:4.3.0
#FROM quay.io/centos/centos:centos7

#RUN yum -y install wget
#RUN wget http://production.cf.rubygems.org/rubygems/rubygems-1.5.0.tgz
##RUN tar xvf rubygems*
#RUN cd rubygems-1.5.0
#RUN ruby setup.rb

RUN yum install ruby rubygems ruby-devel



RUN gem install gazer


#docker build -t jenkins-gazzer .
#docker run --name jenkins-gazzer -it  jenkins-gazzer