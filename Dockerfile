#
# Graphite-carbon server Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Update & install packages for graphite
RUN apt-get update && \
    apt-get install -y graphite-carbon

#Configure graphite-carbon
ADD graphite-carbon /etc/default/

#Configure carbon.conf
ADD carbon.conf /etc/carbon/

#Configure storage-schemas.conf
ADD storage-schemas.conf /etc/carbon/

#Configure storage-aggregation.conf
ADD storage-aggregation.conf /etc/carbon/

EXPOSE 

CMD [""]
