FROM alpine:edge
RUN apk add --no-cache unzip wget ca-certificates iptables ipset
RUN wget -O consul-template.zip https://releases.hashicorp.com/consul-template/0.15.0/consul-template_0.15.0_linux_amd64.zip ; unzip consul-template.zip ; mv consul-template /usr/bin/consul-template ; rm consul-template.zip
ADD iptables.sh.tmpl /tmp/iptables.sh.tmpl
ADD ipset.sh.tmpl /tmp/ipset.sh.tmpl
ADD run.sh /
CMD /run.sh
