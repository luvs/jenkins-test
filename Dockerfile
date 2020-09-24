FROM alpine
RUN mkdir /data
COPY run.sh /data/run.sh

CMD /data/run.sh
