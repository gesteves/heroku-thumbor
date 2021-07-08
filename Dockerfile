FROM python:2.7.13

RUN apt-get update
RUN apt-get -y upgrade

ENV HOME /app
ENV SHELL bash
ENV WORKON_HOME /app
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

RUN pip install honcho

COPY thumbor.conf /app/thumbor.conf

CMD ["thumbor"]

EXPOSE 80

