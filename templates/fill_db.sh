#!/bin/bash

DB_HOST="{{ zabbix_db_host }}"
DB_USER="{{ zabbix_db_user }}"
DB_PASS='{{ zabbix_db_pass }}'
DB_NAME="{{ zabbix_db_name }}"


{% if zabbix_db_create|bool == true %}
zcat /usr/share/doc/zabbix-server-mysql/schema.sql.gz  | mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} ${DB_NAME}
zcat /usr/share/doc/zabbix-server-mysql/images.sql.gz | mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} ${DB_NAME}
zcat /usr/share/doc/zabbix-server-mysql/data.sql.gz  | mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} ${DB_NAME}
{% endif %}

API_PASSWD=$(echo '{{ zabbix_api_pass }}' | md5sum | awk '{print $1}' ;)

mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} ${DB_NAME} -e "update users set passwd='${API_PASSWD}', alias='{{ zabbix_api_user }}' where alias='api_grafana' limit 1;"

{% if zabbix_version >= 5 %}
cat /tmp/zabbix_5_double.sql | mysql -h ${DB_HOST} -u${DB_USER} -p${DB_PASS} ${DB_NAME}
{% endif %}

rm "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/${0}