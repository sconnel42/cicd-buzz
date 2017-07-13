FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
COPY imgs /src/imgs
COPY css /src/css
COPY templates /src/templates
CMD python /src/app.py
