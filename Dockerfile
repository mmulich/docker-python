FROM python:2.7

WORKDIR /
COPY install.sh /install.sh

ONBUILD ARG find_links_url=https://packages.cnx.org/dist/
# Only needed if you are connecting to a non-ssl find-links host
ONBUILD ARG find_links_host
ONBUILD COPY requirements.txt /requirements.txt
ONBUILD RUN /install.sh
