from python:2.7.18-alpine3.11

ENV USER=admin
ENV PASS=1234
ENV ADDRESS=fritz.box

VOLUME ["/usr/src/app/captures"]
WORKDIR /usr/src/app
COPY fritzcap-2.3.1/* ./
COPY dockerfile ./
ENTRYPOINT python ./fritzcap.py --capture_files --decode_files --monitor_calls --box_name $ADDRESS --username $USER --password $PASS
