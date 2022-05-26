#! /bin/bash

dir_list=(~/mydata/elasticsearch/config ~/mydata/elasticsearch/data ~/mydata/elasticsearch/plugins)
for element in ${dir_list[*]}
  do 
    if [ -d "$element" ]; then
        echo "$element directory exists."
    else
        mkdir -p $element
    fi
  done

echo "http.host: 0.0.0.0" > ~/mydata/elasticsearch/config/elasticsearch.yml

docker-compose up -d

# docker-compose down 
