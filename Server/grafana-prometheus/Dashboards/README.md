# Grafana Dashboard Documentation
## System Overview Dashboard
When we login to Eagle1 Grafana URL, we see the System Overview Dashboard, This Dashboard gives the overall CPU and Memory utilization and the Hardware Specifications of the system.
This Dashboard has a filter on the top left named Host where we can select the desired host from the dropdown. Also, this Dashboards has links for other Dashboards to navigate beside the Host filter.
The links to the Dashboard with the short description:


**[Infra Monitoring](http://eagle1.mr.med.ge.com/grafana/d/W5KDrdKn/infra-monitoring?orgId=1)** : This Dashboard monitors the overall system resources through node exporter with Prometheus as data source. It includes CPU, Memory, Disk IO, network, and other monitoring metrics. The filter other than the Host filter used is Interval, which represents different time intervals at which the data could be aggregated or queried for every 30 sec to 30 min. 

<img src="doc/Infra-Monitoring.PNG" width=500>


**[CPU Monitoring](http://eagle1.mr.med.ge.com/grafana/d/c7c23fb4-a34a-41df-8d34-252d2b0eab26/cpu-overview-dashboard?orgId=1)**: The Dashboard monitors the overall System CPU load and CPU load for all the processes running on the System.

<img src="doc/CPU-Monitoring.PNG" width=500>


**[Memory Monitoring](http://eagle1.mr.med.ge.com/grafana/d/c7c23fb4-a34a-41df-8d34-252d2b0eab28/memory-ram-overview-dashboard?orgId=1)**: The Dashboard monitors the overall System Memory (RAM) utilization and monitors the same for all the processes running on the System.

<img src="doc/RAM-Monitoring.PNG" width=500>


**[Nvidia GPU Metrics](http://eagle1.mr.med.ge.com/grafana/d/GPU/nvidia-gpu-dashboard?orgId=1)**: The Dashboard is a Standard GPU Dashboard which monitors the Overall GPU metrics in real time with GPU stats such as GPU Utilization, Memory, temperature, Power Consumption, Clock Speed and other metrics on the system.

<img src="doc/NVIDIA-Monitoring.PNG" width=500>


**[RabbitMQ Overview](http://eagle1.mr.med.ge.com/grafana/d/Kn5xm-gZk2/rabbitmq-overview?orgId=1)**: This Dashboard is a Standard RabbitMQ Overview Dashboards which monitors RabbitMQ instances, Information about the RabbitMQ cluster's status, including the number of nodes in the cluster, their status (up/down), and any clustering-related alerts or events, Queue Metrics, Connection Metrics, Channel metrics, node specifics and other metrics.

<img src="doc/RabbitMQ-Monitoring.PNG" width=500>

**[Log Monitoring](http://eagle1.mr.med.ge.com/grafana/d/dU1u39N4z/elasticsearch-logs?orgId=1)**: This Dashboard monitors the logs count and log details from the Elasticsearch 7 coming from open telemetry collector agent.

<img src="doc/Log-Monitoring.PNG" width=500>


**[KPI Monitoring](http://eagle1.mr.med.ge.com/grafana/d/adfbb31njorggf/cx-service-kpi?orgId=1)**:This Dashboard monitors the CX Services CPU, Memory and Time taken by the CX services focusing on the performance and efficiency

<img src="doc/KPI-Monitoring.PNG" width=500>


**[Monitoring Agent Monitoring (OTEL Collector)](http://eagle1.mr.med.ge.com/grafana/d/BKf2sowmj/otel-collector?orgId=1)**: This Dashboards monitors the overall OTEL Collector CPU load such as CPU usage, Service instance Count, Uptime by service instance and monitors memory panels such as Total RSS memory, Total Runtime System Memory, Total Runtime heap memory. It monitors and visualize its component metrics which are Receiver metrics, Processor metrics and Exporter Metrics for different hosts.

<img src="doc/OTEL-Monitoring.PNG" width=500>


**[Monitoring tools Stats](http://eagle1.mr.med.ge.com/grafana/d/cdhegmmzfdwcgf/monitoring-tools-stats?orgId=1)**: This Dashboard monitors the Docker containers for Eagle1. It monitors the services running on the containers, monitors the CPU usage, Memory utilization, I/O performance, identify write loads onto container systems.
Below is the Description of all the panels.

<img src="doc/Server-Monitoring.PNG" width=500>

### Infra Overview for the Host
*Panel : CPU Utilization on the Host* 
**Note**: 100% CPU Utilization means
  - All the cores of the Host are fully utilized
  -	Each core is contributing its maximum processing power
  -	There is no idle time across any of the cores
Description: This panel displays real-time CPU usage in percentage for the Host/Target 
Data Source: Prometheus

*Panel : Disk Usage on the Host*
Description: This Panel monitors the Used Root FS in percentage indicating that it focuses on tracking the amount of used space on the root filesystem of the target node.
Data Source: Prometheus

*Panel : RAM used by the Host*
Description: This Panel monitors non-available RAM Memory in age, which likely means it's focused on tracking how much RAM is being used or unavailable.
Data Source: Prometheus

*Panel : CPU Cores, Disk Size, System Uptime, RAM, SWAP* 
Description: 
The panel's description is total number of CPU cores, monitors the root file system (Disk size) on the hosts, monitors the system uptime, total RAM and total SWAP space available on the hosts.
Data Source: Prometheus

*Panel : Total CPU usage on the host over time*
Description: This panel is monitoring the basic CPU usage information of a specified node showing busy and idle state
Data Source: Prometheus

*Panel : Memory Basic Utilization on the host over time*
Description: This panel is monitoring the basic Memory usage information of a specified node. It shows the following legends.
 1.	RAM Total: Represents the total amount of RAM available on the system.
 2.	RAM Used: Shows the amount of RAM that is currently in use by the system, including used, cached, buffered, and reclaimable Memory.
 3.	RAM Cache + Buffer: Displays the combined size of cached and buffered Memory, which contributes to the overall Memory utilization.
 4.	RAM Free: Indicates the amount of free RAM available for use by the system.
 5.	SWAP Used: Shows the amount of swap space that is currently in use on the system.
Data Source: Prometheus

### TOP 10 Resource Consuming Processes on the hosts

*Panel : Top 10 CPU utilizing processes over time*
Description: This panel is monitoring top 10 CPU utilizing processes. The panel is designed to show the CPU load of the top processes at an instant. It shows CPU load for each process group and then selects the top 10 based on their load.
Data Source: Prometheus

*Panel : Top 10 Memory utilizing processes over time*
Description: This panel is monitoring top 10 Memory utilizing processes, helping to monitor and analyse Memory usage distribution across different processes in the system.
Data Source: Prometheus

### System Logs by the Host system

*Panel : Log Files update on the Host*
Description: This Panel monitors log files updated on a specific node using Elasticsearch as the data source
Data Source: Elasticsearch


*Panel : Log Details on the Host*
Description: This Panel displays log details for a specific node using Elasticsearch as the data source in the table format
Data Source: Elasticsearch

*Traces on the Host Systems*
Panel : Log Details on the Host
Description: This Panel displays all traces from a specific node using Elasticsearch as the data source in the table format.
Data Source: Elasticsearch




## CPU Monitoring Dashboard
The Dashboard monitors the CPU load for all the individual processes, monitors the collector agent MEMORY load and Exporter CPU load on the host systems.
This Dashboard also has a filter on the top left named Host where we can select the desired host from the dropdown and the link for the System Overview Dashboard on the top right.
Note: 100% CPU Utilization means
  -	All the cores of the Host are fully utilized
  -	Each core is contributing its maximum processing power
  - There is no idle time across any of the cores

Description of each Panel is mentioned below:

*Panel : Total CPU usage by the Host over time*
Description: This Panel monitors CPU usage in percent for the hosts, provide basic CPU load.
Data Source: Prometheus

*Panel : Top 10 CPU utilizing processes on Host over time*
Description: This Panel monitors the CPU load in percent for top 10 processes through process Exporter.
Data Source: Prometheus

*Panel : OTEL Collector CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for the OTEL (Open Telemetry) Collector application using data from a Prometheus data source.
Data Source: Prometheus

*Panel : Process Exporter CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in for the Process Exporter application using data from a Prometheus data source.
Data Source: Prometheus

*Panel : Java CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the Java applications from a Prometheus data source.
Data Source: Prometheus

*Panel : CX Java CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for CX Java applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Non CX Java CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the Non CX Java applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Firefox CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the Firefox applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Python CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : MR Python CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the MR Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Nuevo Python CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the Nuevo Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : RSVP Python CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the RSVP Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Concerto C++ CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent for all the Concerto C++ applications from a Prometheus data source.
Data Source: Prometheus

*Panel : RSVP C++ CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent all the RSVP C++ applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Shell Scripts CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU Load in percent for all the shell scripts from a Prometheus data source.
Data Source: Prometheus

*Panel : Postgres CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent all the Postgres applications from a Prometheus data source.
Data Source: Prometheus

*Panel : RMI-Registry CPU usage on Host over time*
Description: This Panel monitors and visualizes CPU load in percent all the RMI Registry applications from a Prometheus data source.
Data Source: Prometheus



## Memory Monitoring (RAM) Dashboard
The Dashboard monitors the Memory utilization (RAM) for all the individual processes, monitors the collector agent Memory utilization and Exporter Memory utilization on the host systems.
This Dashboard also has a filter on the top left named Host where we can select the desired host from the dropdown and the link for the System Overview Dashboard on the top right.

Description of each Panel is mentioned below:

*Panel : Memory Basic Utilization on the Host*
Description: This Panel monitors Memory usage for the hosts, provide basic Memory usage over time
Data Source: Prometheus

*Panel : Top 10 Memory utilizing processes on Host over time*
Description: This Panel monitors the Memory utilization for top 10 processes through process Exporter.
Data Source: Prometheus

*Panel : OTEL Collector Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for the OTEL (Open Telemetry) Collector application using data from a Prometheus data source.
Data Source: Prometheus

*Panel: Process Exporter Memory usage on Host over time*
Description: This Panel monitors and visualizes MEMORY utilization for the Process Exporter application using data from a Prometheus data source.
Data Source: Prometheus

*Panel : Java Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the Java applications from a Prometheus data source.
Data Source: Prometheus

*Panel : CX Java Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for CX Java applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Non CX Java Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization all the Non CX Java applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Firefox Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the Firefox applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Python Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : MR Python Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the MR Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Nuevo Python Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the Nuevo Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : RSVP Python Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the RSVP Python applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Concerto C++ Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the Concerto C++ applications from a Prometheus data source.
Data Source: Prometheus

*Panel : RSVP C++ Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the RSVP C++ applications from a Prometheus data source.
Data Source: Prometheus

*Panel : Shell Scripts Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the shell scripts from a Prometheus data source.
Data Source: Prometheus

*Panel : Postgres Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the Postgres applications from a Prometheus data source.
Data Source: Prometheus

*Panel : RMI-Registry Memory usage on Host over time*
Description: This Panel monitors and visualizes Memory utilization for all the RMI Registry applications from a Prometheus data source.
Data Source: Prometheus



## CX Service KPI (KPI Monitoring)
	
This Dashboard monitors the CX Services CPU, Memory and Time taken by the CX services focusing on the performance and efficiency. This Dashboard has two filter on the top left Host where we can select the desired host from the dropdown and KPI service, here we can select the KPI service from the dropdown menu to be monitored.
Note: 100% CPU Utilization means
  - All the cores of the Host are fully utilized
  - Each core is contributing its maximum processing power
  - There is no idle time across any of the cores

Description of the Panels are given below:

*Panel : CX Service KPI(s)*
Description: This Panel monitors and visualizes the time taken by KPI services or processes on a specific host from a Influxdb datasource. It is monitoring the KPI services from the measurement named “KPI” within an influxdb instance.
Data Source: InfluxDB

*Panel : System CPU*
Description: This panel displays real-time CPU usage in percentage for the Host
Data Source: Prometheus

*Panel : CX Service CPU*
Description: This Panel monitors and visualizes the CPU load in percentage for all the CX services running on the host.
Data Source: Prometheus

*Panel : Legacy Process CPU*
Description: This Panel monitors and visualizes the CPU load in percentage for all the Legacy Processes running on the host.
Data Source: Prometheus

*Panel : CX Service RSS*
Description: This Panel monitors and visualizes the Memory Utilization for all the CX services running on the host.
Data Source: Prometheus

*Panel : System RSS*
Description: This Panel monitors and visualizes the memory utilization, provide basic memory usage over time.
Data Source: Prometheus


## Elasticsearch logs (Log Monitoring)
This Dashboard monitors the logs count and log details from the Elasticsearch 7 coming from open telemetry collector agent.
This Dashboard has a filter on the top left Host where we can select the desired host from the dropdown.

Description of the Panels are given below:

*Panel : Logging Count* 
Description: This Panel monitors and visualizes the count of the log entries for a particular host over time.
Data Source: Elasticsearch-Logs

*Panel : Logging*
Description: This Panel monitors and visualizes the overall log details in table format coming from Elasticsearch data source. The Entries are sorted with the timestamp field in descending order, ensuring the most recent log entries are displayed first. We can filter the logs with filename, hostname and body of the logs fetched. The filter icon is displayed besides the column name.
Data Source: Elasticsearch-Logs


## Monitoring tools Stats
This Dashboard monitors the Monitoring tools on Eagle1. It monitors the services running on the containers, monitors the CPU usage, Memory utilization, I/O performance, identify write loads onto container systems.
This Dashboard has some filters at the top of the Dashboard
 - Instance: This filter provides the host system list to be monitored
 - Interface: Interface is a label for which the query is fetching values. Network interfaces within containers are labeled, and this query is asking Prometheus to return all unique values of the interface label that match the given filters.

Here, 100% CPU usage is defined as the full utilization of a single CPU core. Therefore, if a system has multiple cores and a process is utilizing more than one core fully, the reported CPU percentage can exceed 100%.



