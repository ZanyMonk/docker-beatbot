FROM python:3.7-bullseye

ADD "https://github.com/ZanyMonk/beatbot.git" skipcache
RUN git clone https://github.com/ZanyMonk/beatbot.git /opt/beatbot
WORKDIR /opt/beatbot

COPY .env .env

RUN apt update
RUN apt -y install ffmpeg
RUN pip install -r requirements.txt

CMD ["python", "beatbot.py"]
