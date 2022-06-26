FROM centos:7

#RUN apt-get update && apt-get install -y openssh-server
RUN yum install -y openssh-server java-1.8.0-openjdk python
RUN mkdir /var/run/sshd
RUN echo 'root:centos' | chpasswd
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN ssh-keygen -A
EXPOSE 22

RUN yum install -y git telnet ftp vim make rsh rsync wget zip jq sshpass nodejs curl unzip \
    yum clean all -y

CMD ["/usr/sbin/sshd", "-D"]