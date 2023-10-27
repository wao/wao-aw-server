FROM arm64v8/alpine

RUN apk update
RUN apk add python3 py3-pip

COPY aw_server-0.12.0-py3-none-any.whl /tmp
RUN pip3 install /tmp/aw_server-0.12.0-py3-none-any.whl

COPY static.tgz /tmp
RUN cd /usr/lib/python3.11/site-packages/aw_server/static && tar xvzf /tmp/static.tgz


RUN adduser -g "awserver" -D -u 1000 awserver
RUN mkdir -p /home/awserver/.local/share/activitywatch
#RUN mkdir -p /home/yangchen/.config/ruby-joplin

#COPY jv /bin

EXPOSE 560

