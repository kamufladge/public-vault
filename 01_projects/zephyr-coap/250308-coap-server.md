---
id: 250308-coap-server
aliases:
  - zephyr-coap-server
tags:
  - project
  - zephyr
---

# CoAP Server

This is preparation work for my zephyr [[250310-template|template]].

## Todo

- [ ] Run CoAP server on native_sim
  - [ ] use libcoap clients to interact with it (check what content format is supported)
  - [ ] is coap tcp supported?
- [ ] try to run coap server sample on nucleo board without changing code
  (overlay files are ok)
- [ ] trigger log on write on resource
- [ ] Create zephyr-template github repo (will be base for future implementations)

## Networking nat ETH <-> WLAN

Create nat from ETH to wlan

```bash
ETH_INTERFACE_NAME=enp5s0
WLAN_INTERFACE_NAME=wlo1
ETH_STATIC_IP=192.0.2.1

sysctl -w net.ipv4.ip_forward=1
ip address add dev $ETH_INTERFACE_NAME $ETH_STATIC_IP/24
iptables -t nat -A POSTROUTING -o $WLAN_INTERFACE_NAME -j MASQUERADE
iptables -A FORWARD -i $ETH_INTERFACE_NAME -o $WLAN_INTERFACE_NAME -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $WLAN_INTERFACE_NAME -o $ETH_INTERFACE_NAME -j ACCEPT
```
