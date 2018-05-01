# hipages/rabbitmq

[![CircleCI](https://circleci.com/gh/hipages/docker-rabbitmq.svg?style=svg)](https://circleci.com/gh/hipages/docker-rabbitmq)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

A customised version of the [official image][official-image] for RabbitMQ.

The image includes the [prometheus_rabbitmq_exporter][prometheus-rabbitmq-exporter] to enable monitoring. It's a companion for the helm chart [rabbitmq-ha][rabbitmq-ha].

[official-image]: https://hub.docker.com/_/rabbitmq/
[prometheus-rabbitmq-exporter]: https://github.com/deadtrickster/prometheus_rabbitmq_exporter
[rabbitmq-ha]: https://github.com/kubernetes/charts/blob/master/stable/rabbitmq-ha
