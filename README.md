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
* Special file containing the last 'n' number of files updated - so you can see what files Dropbox is currently syncing
* Ignore file filters e.g. '*.tmp'
* Flatten Symlinks
