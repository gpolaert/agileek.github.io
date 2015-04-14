---
layout: post
title:  "Httppie and json: unleash your terminal"
date:   2015-04-16
categories: tools
---



json -a -c 'this.realm === "bbipcacti/interface"' name

du javascript en brut
http --pretty=format http://172.17.10.81/service/kpi?type=counter | json -a -c 'this.realm.indexOf("bbipcacti") === 0' name



Le fichier brut : 

[
    {
        "_createdAt": "2015-04-02T12:15:58.716Z", 
        "_createdBy": "system", 
        "_link": "/kpi/traffic_out_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.154Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:traffic_out_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "traffic_out_AVERAGE@realm:bbipcacti/interface", 
        "label": "traffic_out_AVERAGE", 
        "name": "traffic_out_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.700Z", 
        "_createdBy": "system", 
        "_link": "/kpi/Hostname%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.152Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:Hostname@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "Hostname@realm:bbipcacti/interface", 
        "label": "Hostname", 
        "name": "Hostname", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.715Z", 
        "_createdBy": "system", 
        "_link": "/kpi/unicast_out_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:25:04.702Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:unicast_out_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "unicast_out_AVERAGE@realm:bbipcacti/interface", 
        "label": "unicast_out_AVERAGE", 
        "name": "unicast_out_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.705Z", 
        "_createdBy": "system", 
        "_link": "/kpi/unicast_in_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:25:04.701Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:unicast_in_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "unicast_in_AVERAGE@realm:bbipcacti/interface", 
        "label": "unicast_in_AVERAGE", 
        "name": "unicast_in_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.711Z", 
        "_createdBy": "system", 
        "_link": "/kpi/nonunicast_in_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:25:04.702Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:nonunicast_in_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "nonunicast_in_AVERAGE@realm:bbipcacti/interface", 
        "label": "nonunicast_in_AVERAGE", 
        "name": "nonunicast_in_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.712Z", 
        "_createdBy": "system", 
        "_link": "/kpi/nonunicast_out_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:25:04.702Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:nonunicast_out_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "nonunicast_out_AVERAGE@realm:bbipcacti/interface", 
        "label": "nonunicast_out_AVERAGE", 
        "name": "nonunicast_out_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.713Z", 
        "_createdBy": "system", 
        "_link": "/kpi/discards_in_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.152Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:discards_in_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "discards_in_AVERAGE@realm:bbipcacti/interface", 
        "label": "discards_in_AVERAGE", 
        "name": "discards_in_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.714Z", 
        "_createdBy": "system", 
        "_link": "/kpi/traffic_in_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.153Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:traffic_in_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "traffic_in_AVERAGE@realm:bbipcacti/interface", 
        "label": "traffic_in_AVERAGE", 
        "name": "traffic_in_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.706Z", 
        "_createdBy": "system", 
        "_link": "/kpi/errors_in_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.153Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:errors_in_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "errors_in_AVERAGE@realm:bbipcacti/interface", 
        "label": "errors_in_AVERAGE", 
        "name": "errors_in_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.707Z", 
        "_createdBy": "system", 
        "_link": "/kpi/discards_out_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.154Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:discards_out_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "discards_out_AVERAGE@realm:bbipcacti/interface", 
        "label": "discards_out_AVERAGE", 
        "name": "discards_out_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.709Z", 
        "_createdBy": "system", 
        "_link": "/kpi/Collisions_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:25:04.701Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:Collisions_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "Collisions_AVERAGE@realm:bbipcacti/interface", 
        "label": "Collisions_AVERAGE", 
        "name": "Collisions_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:15:58.710Z", 
        "_createdBy": "system", 
        "_link": "/kpi/errors_out_AVERAGE%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.152Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:errors_out_AVERAGE@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "errors_out_AVERAGE@realm:bbipcacti/interface", 
        "label": "errors_out_AVERAGE", 
        "name": "errors_out_AVERAGE", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-03T12:35:42.176Z", 
        "_createdBy": "system", 
        "_link": "/kpi/IfSpeed%40realm%3Abbipcacti%2Finterface", 
        "_topology": {
            "domain": "bbip", 
            "neType": "interface", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-14T14:26:49.151Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:IfSpeed@realm:bbipcacti/interface", 
        "defaultAggregation": "sum", 
        "id": "IfSpeed@realm:bbipcacti/interface", 
        "label": "IfSpeed", 
        "name": "IfSpeed", 
        "realm": "bbipcacti/interface", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.711Z", 
        "_createdBy": "system", 
        "_link": "/kpi/load_5min_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.897Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:load_5min_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "load_5min_AVERAGE@realm:bbipcacti/router", 
        "label": "load_5min_AVERAGE", 
        "name": "load_5min_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.711Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sessions_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.898Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sessions_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sessions_AVERAGE@realm:bbipcacti/router", 
        "label": "sessions_AVERAGE", 
        "name": "sessions_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.712Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_tcp_accept_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.898Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_tcp_accept_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_tcp_accept_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_tcp_accept_AVERAGE", 
        "name": "sys_tcp_accept_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.712Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_tcp_connfails_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.899Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_tcp_connfails_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_tcp_connfails_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_tcp_connfails_AVERAGE", 
        "name": "sys_tcp_connfails_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.712Z", 
        "_createdBy": "system", 
        "_link": "/kpi/load_15min_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.899Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:load_15min_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "load_15min_AVERAGE@realm:bbipcacti/router", 
        "label": "load_15min_AVERAGE", 
        "name": "load_15min_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.713Z", 
        "_createdBy": "system", 
        "_link": "/kpi/Hostname%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.900Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:Hostname@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "Hostname@realm:bbipcacti/router", 
        "label": "Hostname", 
        "name": "Hostname", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.713Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_srv_cur_conns_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.900Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_srv_cur_conns_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_srv_cur_conns_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_srv_cur_conns_AVERAGE", 
        "name": "sys_srv_cur_conns_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.714Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_cli_bytes_out_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.901Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_cli_bytes_out_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_cli_bytes_out_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_cli_bytes_out_AVERAGE", 
        "name": "sys_cli_bytes_out_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.715Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_tcp_connects_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.902Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_tcp_connects_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_tcp_connects_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_tcp_connects_AVERAGE", 
        "name": "sys_tcp_connects_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.714Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_srv_bytes_in_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.901Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_srv_bytes_in_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_srv_bytes_in_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_srv_bytes_in_AVERAGE", 
        "name": "sys_srv_bytes_in_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.716Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_cli_bytes_in_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.903Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_cli_bytes_in_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_cli_bytes_in_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_cli_bytes_in_AVERAGE", 
        "name": "sys_cli_bytes_in_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.715Z", 
        "_createdBy": "system", 
        "_link": "/kpi/_reference%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.903Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:_reference@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "_reference@realm:bbipcacti/router", 
        "label": "_reference", 
        "name": "_reference", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.717Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_tcp_abandons_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.904Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_tcp_abandons_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_tcp_abandons_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_tcp_abandons_AVERAGE", 
        "name": "sys_tcp_abandons_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.717Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_tcp_acceptfails_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.904Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_tcp_acceptfails_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_tcp_acceptfails_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_tcp_acceptfails_AVERAGE", 
        "name": "sys_tcp_acceptfails_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.719Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_srv_bytes_out_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.905Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_srv_bytes_out_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_srv_bytes_out_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_srv_bytes_out_AVERAGE", 
        "name": "sys_srv_bytes_out_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.718Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_tcp_expires_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.904Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_tcp_expires_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_tcp_expires_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_tcp_expires_AVERAGE", 
        "name": "sys_tcp_expires_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.720Z", 
        "_createdBy": "system", 
        "_link": "/kpi/load_1min_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.906Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:load_1min_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "load_1min_AVERAGE@realm:bbipcacti/router", 
        "label": "load_1min_AVERAGE", 
        "name": "load_1min_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.719Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_cli_cur_conns_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.906Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_cli_cur_conns_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_cli_cur_conns_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_cli_cur_conns_AVERAGE", 
        "name": "sys_cli_cur_conns_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.721Z", 
        "_createdBy": "system", 
        "_link": "/kpi/ib_dns_one_zonefail_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.908Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:ib_dns_one_zonefail_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "ib_dns_one_zonefail_AVERAGE@realm:bbipcacti/router", 
        "label": "ib_dns_one_zonefail_AVERAGE", 
        "name": "ib_dns_one_zonefail_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.721Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_cli_tot_conns_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.907Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_cli_tot_conns_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_cli_tot_conns_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_cli_tot_conns_AVERAGE", 
        "name": "sys_cli_tot_conns_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.723Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_srv_tot_conns_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.909Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_srv_tot_conns_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_srv_tot_conns_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_srv_tot_conns_AVERAGE", 
        "name": "sys_srv_tot_conns_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.722Z", 
        "_createdBy": "system", 
        "_link": "/kpi/ib_dns_one_nxdomain_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.908Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:ib_dns_one_nxdomain_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "ib_dns_one_nxdomain_AVERAGE@realm:bbipcacti/router", 
        "label": "ib_dns_one_nxdomain_AVERAGE", 
        "name": "ib_dns_one_nxdomain_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.724Z", 
        "_createdBy": "system", 
        "_link": "/kpi/sys_conn_mem_error_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.911Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:sys_conn_mem_error_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "sys_conn_mem_error_AVERAGE@realm:bbipcacti/router", 
        "label": "sys_conn_mem_error_AVERAGE", 
        "name": "sys_conn_mem_error_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }, 
    {
        "_createdAt": "2015-04-02T12:41:01.724Z", 
        "_createdBy": "system", 
        "_link": "/kpi/ib_dns_one_zonerecu_AVERAGE%40realm%3Abbipcacti%2Frouter", 
        "_topology": {
            "domain": "bbip", 
            "neType": "router", 
            "vendor": "cisco_cacti"
        }, 
        "_updatedAt": "2015-04-13T16:24:43.910Z", 
        "_updatedBy": "system", 
        "_urn": "kpi:ib_dns_one_zonerecu_AVERAGE@realm:bbipcacti/router", 
        "defaultAggregation": "sum", 
        "id": "ib_dns_one_zonerecu_AVERAGE@realm:bbipcacti/router", 
        "label": "ib_dns_one_zonerecu_AVERAGE", 
        "name": "ib_dns_one_zonerecu_AVERAGE", 
        "realm": "bbipcacti/router", 
        "type": "counter", 
        "unit": "KB"
    }
]