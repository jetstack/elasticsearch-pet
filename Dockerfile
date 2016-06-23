FROM fabric8/elasticsearch-k8s:2.3.3

RUN bin/plugin install lmenezes/elasticsearch-kopf/v2.1.1

# See contrib/pets/peer-finder for details
RUN curl -sSL -o /peer-finder https://storage.googleapis.com/kubernetes-release/pets/peer-finder && \
    chmod 755 /peer-finder

COPY on-change.sh /on-change.sh
COPY on-start.sh /on-start.sh

ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
