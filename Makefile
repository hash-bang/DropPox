.PHONY: install test test-mount test-mount-clean

install:
	sudo apt-get -y install libfuse-dev
	sudo cpan Fuse

test:
	perl tests/droppox.t

test-mount: test-mount-clean
	-mkdir tests/fake
	./droppox tests/real tests/fake

test-mount-clean: 
	-sudo umount tests/fake
