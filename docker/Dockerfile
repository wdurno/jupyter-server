FROM ubuntu:18.04

RUN apt update -y && \
apt install python3-pip python3-dev -y && \
pip3 install --upgrade pip && \
pip install virtualenv && \
virtualenv venv && \
. venv/bin/activate && \
pip install jupyter

ADD entrypoint.sh /entrypoint.sh 

RUN chmod a+x /entrypoint.sh 

ENTRYPOINT ["bash", "/entrypoint.sh"] 

