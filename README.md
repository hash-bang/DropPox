**WARNING: This project is not yet in any kind of a usable state**
**CONTINUE AT YOUR OWN RISK**


DropPox
=======
A Fuse mount point to fix various issues with Dropbox on Linux systems.


Installation
------------
Run the following in a terminal:

	sudo apt-get install libfuse-dev
	sudo cpan Fuse

TODO
====
Features not yet implmented:
* __Hide files__ - A list of file globs to be hidden from Dropbox while syncing
* __Faster startup__ - Possibly by keeping an 'image' of the file system in memory so when Dropbox boots the first time and reads the DropPox FS it is actually given a fake FS. This should prevent Dropbox from hashing everying on first start.