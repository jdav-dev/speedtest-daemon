FROM python:3.6-alpine

RUN pip install speedtest-cli && apk add --no-cache curl jq

ADD speedtest-daemon /usr/local/bin

CMD "/usr/local/bin/speedtest-daemon"
