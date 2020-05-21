#! /bin/bash

docker build -t data:v1 .
docker run -it --name data_triage --volume /home/cyc/tian/test_anything:/home data:v1 python /home/download_data_csv.py
docker stop data_triage
docker rm data_triage
docker rmi data:v1
