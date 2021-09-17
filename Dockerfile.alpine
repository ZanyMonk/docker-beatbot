FROM python:3.7-alpine

RUN apk upgrade --update
RUN apk add ffmpeg git gcc musl-dev libffi-dev make

ADD "https://github.com/ZanyMonk/beatbot.git" skipcache
RUN git clone https://github.com/ZanyMonk/beatbot.git /opt/beatbot
WORKDIR /opt/beatbot

RUN pip install -r requirements.txt

COPY .env .env

CMD ["python", "beatbot.py"]
