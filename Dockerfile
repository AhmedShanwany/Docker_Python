FROM ubuntu:latest
RUN apt update
RUN apt install python3 -y
WORKDIR test/
ADD . ./
ENTRYPOINT ["python3","Script1.py"]