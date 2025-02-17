# This file explains you the high level understanding of Otel collector  configuration file.

## Introduction 
   
   The OpenTelemetry Collector receives traces, metrics, and logs, processes the telemetry, and exports it to a
   wide variety of observability backends using its components

## OTEL Collector Components

    Receiver : receive data (metrics, traces, logs) from various sources.
               three recievers configured,
               1> prometheus: scrapes the metrics using desired job "otel-collector", "node-exporter", "rabbitmq", 
                              "nvidia-gpu-exporter", "process-exporter" which scrapes for every 10s 
                               except process-exporter which scrapes for every 60s.
               2> fluent forward:  recieves the logs which is from fluent forward.
               3> zipkin: recieves traces from zipkin endpoint.
    Processor: process and add additional data to the received data.
               
               here it adds new attribute is added to record called "hostname"
    Exporter : send data (metrics, traces, logs) to various destinations.
               exporters used:

               1> prometheusremotewrite
               2> zipkin
               3> elasticsearch/7

    Service  : Uses the configured receivers, processors and exporters to configure a pipeline.
               
               - scrape metrics using prometheus reciver and export to prometheuswrite
               - capture the logs using fluent forward reciever  collected via fluent-bit and export 
                 to elastic search
               - get the traces using reciever zipkin port 9411 from target and export to zipkin 
                 installed in server

    This pipeline defines what components are used for Read/Write data (metrics, traces, logs)
 

## Usage
   
   Start the otel contrib service using below command in the target machine 

   service otelcol-contrib start

   Now there will flow of telemetry data as in the configuration provided in path

   /export/home/testdata/monitor/system-resource-usage-monitor/otelcol-contrib/config.yaml


## Links
   
  [Google](https://opentelemetry.io/docs/collector/configuration/)
