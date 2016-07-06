#!/bin/sh -x
while true; do consul-template -template "/tmp/iptables.sh.tmpl:/tmp/iptables.sh:sh /tmp/iptables.sh" -template "/tmp/ipset.sh.tmpl:/tmp/ipset.sh:sh /tmp/ipset.sh" ; sleep 1; done
