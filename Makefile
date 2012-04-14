.PHONY: test test-clean

test: test-clean
	./droppox tests/real tests/fake

test-clean: 
	-sudo umount tests/fake
