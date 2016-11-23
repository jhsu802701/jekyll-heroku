#!/bin/bash

sh build.sh

cat /home/winner/shared/ports.txt

echo '**********************'
echo 'OPEN YOUR WEB BROWSER.'
echo 'GO TO THE FOLLOWING URL:'
echo 'http://<IP Address>:4000'
echo 'If Docker is installed directly in your host OS, the IP address is localhost.'
echo 'If you are using Docker Machine, use the IP address is probably 192.168.99.100.'
echo '*************************************************************************'
echo '---------------------------'
echo 'jekyll serve --host 0.0.0.0'
jekyll serve --host 0.0.0.0
