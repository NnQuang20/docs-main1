# This file explains you the high level understanding of fluent-bit configuration file.

## Introduction 
   
   Fluent Bit is an open-source telemetry agent specifically designed to efficiently handle the challenges of 
   collecting and processing telemetry data i.e  Logs, Metrics and Traces across a wide range of environments 
   from constrained systems to complex cloud infrastructures. 

   Most of the phases in the pipeline are implemented through plugins: Input, Filter and Output

   We have implemented the inputs ,parsers, processors, filters, outputs.


## Configuration 

    The main configuration file supports four types of sections:

    Service : defines the global properties of the service, including path for parser file configuration.
               
    Input   : is a source (related to an input plugin).
              this tails the log file which matches file in path "/var/log/gehc/*/*KPI.log" using parser 
              called  kpi-new-line-parser defined in parser file configuration

              the 2nd input plugin is to tail the non KPI logs which from the location 
              defined in path using "json parser".

    Filter  : used for enriching or modifying data.
              And also there is filteration for the  KPI and non-KPI logs.
              KPI logs filter - removes the component ,traceid , spanid, entry , exit from the log record 
                              - adds hostname emerald  and happened to record.
                              
              Non KPI logs filter - uses the filters.lua script to extract the filename
                                    and adds the hostname to record.
    Output  : specifies the destination that certain records should follow after a Tag match.
              currently fluent bit can route upto 256 output plugins.

              the two output plugin defined here is:
              influxdb : exports the "KPI parsed logs" from the path to the influxdb Org "system" , bucket "KPI" 
              and with tag as "service" ,
                         "hostname" and "method".
              forward  : exports the non KPI parsed logs to fluent forward.

## Usage

   In this project we use fluent-bit to
   - forward the logs to fluent_forward and 
   - KPI logs to Influxdb.

   
   Start the fluent bit service using below command in the target machine 

   service a_mr_fluent-bit start

   Now there will flow of telemetry data as in the configuration provided in path

   /export/home/testdata/monitor/system-resource-usage-monitor/fluent-bit/fluent-bit.conf



## Links
   
  [Google](https://docs.fluentbit.io/manual)
