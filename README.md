# hipages/rabbitmq

[![CircleCI](https://circleci.com/gh/hipages/docker-rabbitmq.svg?style=svg)](https://circleci.com/gh/hipages/docker-rabbitmq)

A customised version of the [official image][official-image] for RabbitMQ.

The image includes the [prometheus_rabbitmq_exporter][prometheus-rabbitmq-exporter] to enable monitoring. It's a companion for the helm chart [rabbitmq-ha][rabbitmq-ha].

[official-image]: https://hub.docker.com/_/rabbitmq/
[prometheus-rabbitmq-exporter]: https://github.com/deadtrickster/prometheus_rabbitmq_exporter
[rabbitmq-ha]: https://github.com/kubernetes/charts/blob/master/stable/rabbitmq-ha
