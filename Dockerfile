FROM centos:7

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN yum check-update; \
    yum install -y gcc libffi-devel python3 epel-release; \
    yum install -y python3-pip; \
    yum install -y wget; \
    yum clean all

RUN pip3 install --upgrade pip; \
    pip3 install --upgrade virtualenv; \
    pip3 install pywinrm[kerberos]; \
    pip3 install pywinrm; \
    pip3 install jmspath; \
    pip3 install requests; \
    python3 -m pip install ansible

RUN yum install -y unzip; \
   curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip; \
   unzip /tmp/awscliv2.zip -d /usr/local; \
   /usr/local/aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update; \
   rm -rf /tmp/awscliv2.zip /usr/local/aws

