FROM ubuntu:latest
MAINTAINER potapova.ma
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /service
WORKDIR /service
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["service.py"]