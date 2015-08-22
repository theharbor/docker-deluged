FROM zoni/ubuntu
MAINTAINER Nick Groenen

ADD bin/build*.sh /
RUN /build1.sh && /build2.sh && rm /build*.sh

ADD bin/start.sh /
ENTRYPOINT ["/start.sh"]

VOLUME /data
