FROM ubuntu:18.04
ENV INSTALL_PATH /application
RUN mkdir -p $INSTALL_PATH
RUN apt update -y
RUN apt-get install -y python3.6
RUN apt-get install -y vim
RUN apt-get install -y python-pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /application
ENV PORT 8080
CMD python app.py