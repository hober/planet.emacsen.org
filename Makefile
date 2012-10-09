dummy:

prep: cache log

cache log:
	mkdir $@

update-venus:
	git submodule init
	git submodule update
	cd venus ; git checkout master ; git pull ; cd ..
	git add venus

pull-alex:
	git checkout alexott-master
	git pull https://github.com/alexott/planet.emacsen.org.git master

take-alex:
	git checkout master
	git merge alexott-master
	git push origin master
