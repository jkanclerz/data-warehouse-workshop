#!/usr/bin/env sh

## Cron restart
#rc-service crond restart

## REPOS
#REPOS
echo "http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/v3.12/main" > /etc/apk/repositories
echo "http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/v3.12/community" >> /etc/apk/repositories
echo "#http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/edge/main" >> /etc/apk/repositories
echo "#http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/edge/community" >> /etc/apk/repositories
echo "#http://ftp.icm.edu.pl/pub/Linux/distributions/alpine/edge/testing" >> /etc/apk/repositories


##system dependency
apk --update add cmake gcc g++ linux-headers libffi-dev openssl-dev \
	openblas openblas-dev \
	automake \
	libgfortran \
	build-base \
	freetype \
	libgcc \
	subversion \
    tar gzip \
	libxml2 \
	libxml2-dev \
	libxslt-dev gfortran \
	libxslt \
    libxslt-dev \
    libgcc \
    musl \
    libgfortran \
	freetype-dev \
    postgresql-dev \
    openblas \
    lapack        

## variables 
DS_ROOT=`dirname "$0"`
MY_IP=`/sbin/ip -4 -o addr show dev eth1| awk '{split($4,a,"/");print a[1]}'`
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


echo "We are ready to go!!!!"
echo "Your ip is: ${MY_IP}"
echo -e "Happy codding ${GREEN}:)${NC}"