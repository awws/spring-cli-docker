FROM dockerfile/java:oracle-java8

MAINTAINER tomaslin@gmail.com

RUN curl -O http://repo.spring.io/release/org/springframework/boot/spring-boot-cli/1.2.2.RELEASE/spring-boot-cli-1.2.2.RELEASE-bin.tar.gz 

RUN tar -xvf *.gz

RUN rm -rf *.gz

ENV SPRING_HOME /data/spring-1.2.2.RELEASE

ENV PATH $SPRING_HOME/bin:$PATH

CMD ['bash']
