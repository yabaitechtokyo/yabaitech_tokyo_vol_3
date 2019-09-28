FROM ubuntu:bionic
RUN apt-get update -y && apt-get install -y imagemagick
RUN sed -i 's|<policy domain="coder" rights="none" pattern="PDF" />|<!--  <policy domain="coder" rights="none" pattern="PDF" /> -->|' /etc/ImageMagick-6/policy.xml
WORKDIR /workdir
ENTRYPOINT ["convert"]
