FROM itzg/elasticsearch:5.4.0
MAINTAINER Thibault NORMAND <me@zenithar.org>

# Install prometheus exporter
RUN ./bin/elasticsearch-plugin install -b https://distfiles.compuscene.net/elasticsearch/elasticsearch-prometheus-exporter-5.4.0.0.zip

# Install icu analyzer
RUN ./bin/elasticsearch-plugin install -b analysis-icu

# Install phonetic analyzer
RUN ./bin/elasticsearch-plugin install -b analysis-phonetic

# Install murmur3 hash mapper 
RUN ./bin/elasticsearch-plugin install -b mapper-murmur3

# Install X-Pack plugin
#RUN ./bin/elasticsearch-plugin install -b x-pack
