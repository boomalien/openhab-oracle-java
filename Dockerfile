
FROM openhab/openhab:2.1.0-snapshot-armhf

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list \
        &&  echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list \
        &&  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 \
        &&  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get update && apt-get install -y oracle-java8-installer \
        && rm -r /usr/lib/java-8/* \
        && ln -s ln -s /usr/lib/jvm/java-8-oracle/ /usr/lib/java-8 \
        && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

