FROM evarga/jenkins-slave

RUN sudo apt-get update
RUN sudo apt-get install -y wget curl
RUN sudo apt-get install -y python-software-properties

# Install NodeJS via PPA
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install nodejs

USER jenkins
WORKDIR /home/jenkins

CMD ["/bin/bash"]