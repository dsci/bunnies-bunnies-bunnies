FROM rabbitmq:3.6.2-management  

RUN adduser bunny --home /home/bunny --shell /bin/bash --disabled-password --gecos ""

RUN mkdir /code 
RUN chown -R bunny:bunny /code 

ADD . /code 
RUN chown -R bunny:bunny /code 

USER bunny
WORKDIR /code 

USER root
 