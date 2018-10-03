FROM java:openjdk-8u111-alpine
RUN apk add --update &&  apk add git && \
    git clone https://github.com/KOHGYLW/kiftd.git && mkdir data
    
EXPOSE 9000
VOLUME ["./kiftd/conf","./data"]
CMD ["java -jar kiftd-1.0.6-RELEASE.jar -start"]
