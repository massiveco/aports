export REPODEST=/tmp/packages

cri-o:
	cd testing/cri-o && \
		abuild -r

runc:
	cd testing/runc && \
		abuild -r

etcd:
	cd testing/etcd && \
		abuild -r

node_exporter:
	cd testing/node_exporter && \
		abuild -r

testing: node_exporter etcd