Hostname "{{ HOSTNAME }}"

FQDNLookup false
Interval 10
Timeout 2
ReadThreads 5
WriteThreads 5

LoadPlugin cpu
LoadPlugin disk
LoadPlugin interface
LoadPlugin load
LoadPlugin memory
LoadPlugin network

<Plugin network>
	Server "{{ METRICS_HOST }}" "{{ METRICS_PORT }}"
</Plugin>

Include "/etc/collectd/collectd.d/*.conf"
