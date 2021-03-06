FROM anapsix/alpine-java:jre8

RUN adduser -D -h /home/accountapp accountapp
ADD bin /home/accountapp/bin
ADD target/accountapp.war /home/accountapp/bin/accountapp.war

EXPOSE 8080
USER accountapp

ENTRYPOINT /home/accountapp/bin/run.sh
