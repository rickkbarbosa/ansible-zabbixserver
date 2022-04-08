ZABBIX-SERVER
==========

DESCRIPTION
----
Installs all Zabbix server and Grafana with plugins using [Ansible](https://www.ansible.com/community) role.

This role can install Zabbix Server (v4 and above), added with the following features:

- Optimized calls for `services.inc.php`, `srv_status.php` and _Latest data presentations_ (for v4);
- Configuration file flexible for use ElasticSearch and specific resources (v5);
- Added scripted-media types for Telegram, MSTeams, Slack, ~Service Now~ (supressed) and Pagerduty;


REPO USAGE
---
```
git clone https://github.com/rickkbarbosa/ansible-zabbixserver.git
cd ansible-zabbixserver
pip install -r requirements.txt
```


VARIABLES
----

The _defaults/main.yml_ variables could be changed using Ansible "environments" format for each Zabbix Installation a manager could have. Just keep the structure for the definitions and enjoy.
The _vars/main.yml_ variables is child-linked with the main roles and their replacing are not encouraged.

AVAILABLE TAGS
----

* zabbix-server-files: Send Zabbix installer files - Shell script and PS1 files
* zabbix-notify-opsgenie: Install [Atlassian Opsgenie](https://www.atlassian.com/br/software/opsgenie) integration
* zabbix-notify-slack: Install [Slack](https://slack.com) Integration (useful for previous versions)
* zabbix-server-elasticsearch: Prepares Zabbix to work with ElasticSearch (5.x)
* grafana: Install steps for Grafana