FROM quay.io/fluentd_elasticsearch/fluentd:v3.0.4
RUN gem install fluent-plugin-masking
ENV IGNORED_FIELDS=
WORKDIR /
COPY ./custom_entrypoint.sh ./
RUN chmod +x custom_entrypoint.sh
CMD /bin/bash custom_entrypoint.sh