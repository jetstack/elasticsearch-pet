FROM elasticsearch:2.3.5

RUN bin/plugin install lmenezes/elasticsearch-kopf/v2.1.2
RUN bin/plugin install io.fabric8/elasticsearch-cloud-kubernetes/2.3.5

RUN apt-get update && apt-get install -y \
    jq \
 && rm -rf /var/lib/apt/lists/*

COPY pre-stop-hook.sh /pre-stop-hook.sh

ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
