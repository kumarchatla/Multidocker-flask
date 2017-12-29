FROM python:2.7
MAINTAINER Ramesh Kumar "ramesh@test.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["application.py"]
