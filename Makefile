dummy:

prep: cache log

cache log:
	mkdir $@

update-venus:
	git submodule init
	git submodule update
	cd venus ; git checkout master ; git pull ; cd ..
	git add venus
