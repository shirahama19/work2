
FROM ubuntu
WORKDIR /simple-keras-rest-api

LABEL maintainer Koki Shirahama<kshirahama@netprotections.co.jp>

RUN apt-get update
RUN apt-get install python3-pip -y

RUN pip3 install numpy pandas sklearn seaborn requests pillow
RUN pip3 install keras tensorflow Flask gevent json

EXPOSE 5000
CMD ["python3", "run_keras_server.py"]