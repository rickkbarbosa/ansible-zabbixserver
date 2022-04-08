ZABBIX-SERVER
==========

DESCRIPTION
----
Installs all Zabbix server and Grafana with plugins using [Ansible](https://www.ansible.com/community) role.

This role can install Zabbix Server (v4 and above), added with the following features:

- Optimized calls for `services.inc.php`, `srv_status.php` and _Latest data presentations_ (for v4);
- Configuration file flexible for use ElasticSearch and specific resources (v5);
- Added scripted-media types for Telegram, MSTeams, Slack, Service Now and Pagerduty;


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