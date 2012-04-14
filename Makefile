.PHONY: test test-clean

test: test-clean
	-mkdir tests/fake
	./droppox tests/real tests/fake

test-clean: 
	-sudo umount tests/fake
