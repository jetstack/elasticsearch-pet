# Elasticsearch Pet

This is an elasticsearch docker image meant to be used with PetSets.

This image is using Fabric8's great work around the [kubernetes plugin](https://github.com/fabric8io/elasticsearch-cloud-kubernetes) for elasticsearch and their [image](https://hub.docker.com/r/fabric8/elasticsearch-k8s/) as parent.

## Changes for PetSet

- Use Pod's hostname as elasticsearch host name
- Handle downscales so that no data loss occurs (using lifecycle hooks)
