export REPODEST=/tmp/packages

cri-o:
	cd testing/cri-o && \
		abuild -r
runc:
	cd testing/runc && \
		abuild -r

testing: cri-o runc