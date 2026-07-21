FROM ubuntu:20.04
COPY . .
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask
ENV PORT=8080
EXPOSE 8080
CMD ["python3", "/app/hello.py"]
