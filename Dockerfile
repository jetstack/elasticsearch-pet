FROM elasticsearch:5.5.2

RUN bin/elasticsearch-plugin install io.fabric8:elasticsearch-cloud-kubernetes:5.5.2

ENV BOOTSTRAP_MLOCKALL=true NODE_DATA=true NODE_MASTER=true JAVA_OPTS=-Djava.net.preferIPv4Stack=true

# Disable swap
RUN echo 'vm.swappiness=1' | tee -a /etc/sysctl.conf

# pre-stop-hook.sh and dependencies
RUN apt-get update && apt-get install -y \
    jq \
    curl \
 && rm -rf /var/lib/apt/lists/*

COPY pre-stop-hook.sh /pre-stop-hook.sh

ADD elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
