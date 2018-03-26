# Mapnik with python3 and mappings docker image

This project contains dockerfile for building docker image with Mapnik and python 3.5 environment and mappings.
Image is based on Ubuntu LTS release and official repo packages for mapnik, python3 and python development tools.

One can pull image from Docker Hub using
```docker pull rockmagicnet/mapnik-python3```


## Usage

Sample usage for mapnik python web application deployment or development:
```
FROM rockmagicnet/mapnik-python3

# first install requirements to take advantage of docker builder cache
COPY ./requirements.txt /home/requirements.txt
RUN pip install -r /home/requirements.txt

# copy application
COPY ./src /app
WORKDIR /app
EXPOSE 8000

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8000", "-w", "4", "app:app"]
```
