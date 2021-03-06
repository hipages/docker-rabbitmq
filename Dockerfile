FROM rabbitmq:3.7-alpine

ENV PROMETHEUS_RABBITMQ_EXPORTER_URL https://github.com/deadtrickster/prometheus_rabbitmq_exporter/releases/download
ENV PROMETHEUS_RABBITMQ_EXPORTER_VERSION 3.7.2.1

ADD $PROMETHEUS_RABBITMQ_EXPORTER_URL/v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION/accept-0.3.3.ez $RABBITMQ_HOME/plugins/
ADD $PROMETHEUS_RABBITMQ_EXPORTER_URL/v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION/prometheus-3.4.5.ez $RABBITMQ_HOME/plugins/
ADD $PROMETHEUS_RABBITMQ_EXPORTER_URL/v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION/prometheus_cowboy-0.1.4.ez $RABBITMQ_HOME/plugins/
ADD $PROMETHEUS_RABBITMQ_EXPORTER_URL/v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION/prometheus_httpd-2.1.8.ez $RABBITMQ_HOME/plugins/
ADD $PROMETHEUS_RABBITMQ_EXPORTER_URL/v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION/prometheus_process_collector-1.3.1.ez $RABBITMQ_HOME/plugins/
ADD $PROMETHEUS_RABBITMQ_EXPORTER_URL/v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION/prometheus_rabbitmq_exporter-v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION.ez $RABBITMQ_HOME/plugins/

RUN chmod 644 $RABBITMQ_HOME/plugins/accept-0.3.3.ez \
              $RABBITMQ_HOME/plugins/prometheus-3.4.5.ez \
              $RABBITMQ_HOME/plugins/prometheus_cowboy-0.1.4.ez \
              $RABBITMQ_HOME/plugins/prometheus_httpd-2.1.8.ez \
              $RABBITMQ_HOME/plugins/prometheus_process_collector-1.3.1.ez \
              $RABBITMQ_HOME/plugins/prometheus_rabbitmq_exporter-v$PROMETHEUS_RABBITMQ_EXPORTER_VERSION.ez
