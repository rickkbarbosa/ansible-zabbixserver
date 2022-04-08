# -*- coding: utf-8 -*-

tg_key = "469817172:AAFE759sw2W0SCnVtXN8EgIlwIuJ5Csehg8"  # telegram bot api key

zbx_tg_prefix = "zbxtg"
zbx_tg_tmp_dir = "/tmp/" + zbx_tg_prefix
zbx_tg_signature = False



zbx_server = "http://127.0.0.1/zabbix"



zbx_api_user = "api_grafana"
zbx_api_pass = "8788*$(==)/"
zbx_api_verify = True 

proxy_to_zbx = None
proxy_to_tg = None

#proxy_to_zbx = "proxy.local:3128"
#proxy_to_tg = "proxy.local:3128"

emoji_map = {
    "ok": "✅",
    "problem": "❗",
    "info": "ℹ️",
    "warning": "⚠️",
    "disaster": "❌",
    "bomb": "💣",
    "fire": "🔥",
    "hankey": "💩",
}
