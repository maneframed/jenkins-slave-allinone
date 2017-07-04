FROM evarga/jenkins-slave

RUN sudo apt-get update
RUN sudo apt-get install -y openjdk-8-jdk
RUN sudo apt-get install -y maven 
RUN sudo apt-get install -y wget curl
RUN sudo apt-get install -y python-software-properties

# Install Gradle via Binary
RUN wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip
RUN sudo mkdir /opt/gradle
RUN sudo unzip -d /opt/gradle gradle-3.4.1-bin.zip
ENV PATH "$PATH:/opt/gradle/gradle-3.4.1/bin"

# Install NodeJS via PPA
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install nodejs

RUN mkdir /app
WORKDIR /app

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD ["/bin/bash"]