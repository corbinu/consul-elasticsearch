#
# Consul Elasticsearch
#
FROM 		elasticsearch:1.7
MAINTAINER 	Corbin Uselton <corbinu@decimal.io>

VOLUME /usr/share/elasticsearch/data

COPY bin/* /usr/local/bin/

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 9200 9300

CMD ["elasticsearch"]
