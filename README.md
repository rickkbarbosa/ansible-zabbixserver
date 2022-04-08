ZABBIX-SERVER
==========

DESCRIPTION
----
Installs all Zabbix server and Grafana with plugins


VARIABLES
----

The _vars/main.yml_ variables is child-linked with the main roles and their replacing are not encouraged.

AVAILABLE TAGS
----

* zabbix-server-files: Send Zabbix installer files - Shell script and PS1 files
* zabbix-notify-opsgenie: Install [Atlassian Opsgenie](https://www.atlassian.com/br/software/opsgenie) integration
* zabbix-notify-slack: Install [Slack](https://slack.com) Integration (useful for previous versions)
* zabbix-server-elasticsearch: Prepares Zabbix to work with ElasticSearch (5.x)
* grafana: Install steps for Grafana