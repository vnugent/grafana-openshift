FROM grafana/grafana:4.1.2
USER root
COPY fix-permissions /usr/bin/
RUN fix-permissions /var/log/grafana /var/lib/grafana /etc/grafana

COPY openshift-run.sh /usr/bin/

ENTRYPOINT ["/usr/bin/openshift-run.sh"]
