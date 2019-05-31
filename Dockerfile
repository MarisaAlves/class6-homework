FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y python3-pip \
    && pip3 install --upgrade pip

RUN pip3 install matplotlib pandas os seaborn sklean numpy

WORKDIR /homework_docker

COPY basic_part.py /homework_docker
COPY diabetes.data /homework_docker

ENTRYPOINT ["python3", "-u", "./basic_part.py"]
