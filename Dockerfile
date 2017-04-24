FROM openhab/openhab

RUN apt-get update && apt-get install -y oracle-java8-installer \
      && ln -s ln -s /usr/lib/jvm/java-8-oracle/ /usr/lib/java-8 \
      && rm -rf /var/lib/apt/lists/*
      
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

