---
id: 250308-nativenetworking
aliases: []
tags:
  - zephyr
  - native_sim
  - networking
---

# native_networking

```bash
# create virtual ethernet zeth
./net-setup.sh up
# enable ip forwarding (temporally)
sudo sysctl -w net.ipv4.ip_forward=1
# enable nat (temporally)
sudo iptables -t nat -A POSTROUTING -o wlo1 -j MASQUERADE
sudo iptables -A FORWARD -i wlo1 -o zeth -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i zeth -o wlo1 -j ACCEPT
```
