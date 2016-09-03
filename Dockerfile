FROM fabric8/elasticsearch-k8s:2.3.3

RUN bin/plugin install lmenezes/elasticsearch-kopf/v2.1.1



ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
