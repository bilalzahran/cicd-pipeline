FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirement.txt /src/requirement.txt
RUN pip install -r /src/requirement.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python /src/app.py