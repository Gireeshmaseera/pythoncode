FROM python
MAINTAINER Gireeshma Seera
LABEL This is my first Dockerfile for python application
EXPOSE 5000
WORKDIR /myapp
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]
