FROM python:3.5

RUN pip install awscli
RUN mkdir -p /var/app
WORKDIR /var/app

CMD [ "/bin/bash" ]
