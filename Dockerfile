FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
    apt-get install -y --no-install-recommends python3-mapnik python3-dev gcc python3-gdal python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#RUN apt-get update && \
#    apt-get install -y --no-install-recommends python3.5-dev && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/pip3 /usr/bin/pip && pip install --upgrade pip gunicorn setuptools wheel

CMD ["/bin/bash"]

