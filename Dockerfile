FROM openjdk:latest

RUN curl -O http://repo.spring.io/release/org/springframework/boot/spring-boot-cli/1.4.1.RELEASE/spring-boot-cli-1.4.1.RELEASE-bin.tar.gz

RUN tar -xvf *.gz

RUN rm -rf *.gz

RUN apt-get update && apt-get install -y \
        bash-completion \
        nano

RUN ln -s /spring-1.4.1.RELEASE/shell-completion/bash/spring /etc/bash_completion.d/spring 

COPY 90-p360env.conf /root/.bashrc

ENTRYPOINT ["/bin/bash", "-l"]
