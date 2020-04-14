
FROM python:stretch
 
WORKDIR /usr/src/app

COPY * ./

RUN pip3 install --no-cache-dir -r ./requirements.txt

RUN pip3 install flask gunicorn

RUN ls -ltr ./

RUN ls -ltr /usr/src/app/

CMD ["gunicorn","-b",":8080","main:APP"]
