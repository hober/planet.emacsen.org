dummy:

prep: venus cache log

cache log:
	mkdir $@

venus:
	bzr get http://intertwingly.net/code/venus
