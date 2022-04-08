#!/bin/bash
#===============================================================================
# IDENTIFICATION DIVISION
#        ID SVN:   $Id$
#          FILE:  msteams.sh 
#         USAGE:  $0 <subject> <message>
#   DESCRIPTION:  Sends Zabbix alerts to MSTeams
#       OPTIONS:  --- 
#  REQUIREMENTS:  --- 
#          BUGS:  --- 
#         NOTES:  --- 
#          TODO:  --- 
#        AUTHOR:  Carlos Vinicius <carlos.macedo@la.logicalis.com>
#       COMPANY:  Logicalis
#       VERSION:  1.0 
#       CREATED:  2019-Jul-24 12:28 PM BRT 
#      REVISION:  --- 
#=============================================================================== 

# Teams incoming web-hook URL and user name
URL="${1}"                # https://dev.outlook.com/Connectors/GetStarted#posting-more-complex-cards
CURLHEADER='-H "Content-Type: application/json"'
AGENT='-A "zabbix-teams-alertscript"'
CURLMAXTIME='-m 60'

SUBJECT="${2}"

RECOVERSUB='^RECOVER(Y|ED)?$'
if [[ ( "${SUBJECT##*RECOVER*}" ) ]]; then	
    THEMECOLOR='43EA00'
elif [ "${SUBJECT##*PROBLEM*}" ]; then
    THEMECOLOR='EA4300'
else
    THEMECOLOR='555555'
fi

MESSAGE="${SUBJECT}: $3"

# Build our JSON payload and send it as a POST request to the Slack incoming web-hook URL

PAYLOAD=\""{\\\"title\\\": \\\"${SUBJECT} \\\", \\\"text\\\": \\\"${MESSAGE} \\\", \\\"themeColor\\\": \\\"${THEMECOLOR}\\\"}"\"

CURLDATA=$(echo -d "$PAYLOAD")

eval curl $CURLMAXTIME $CURLHEADER $CURLDATA $URL $AGENT