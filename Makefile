GIT = https://github.com/notqmail/notqmail
REF = $$(git -C notqmail.git rev-parse ${BRANCH})

all:v notqmail.git
	@test -n '${BRANCH}' -a -n '${PATCH}'
	@make log/${REF}-${PATCH}.log COMMIT=${REF} PATCH=${PATCH}

everything:v
	@xargs -I {} -n 1 make patches BRANCH={} <conf-branch

branches:v
	@echo '>>> building all $@ for patch ${PATCH}'
	@xargs -I {} -n 1 make BRANCH={} PATCH=${PATCH} <conf-branch

patches:v
	@echo '>>> building all $@ for branch ${BRANCH}'
	@ls patch | sed 's/.patch$$//' |\
	 xargs -I {} -n 1 make BRANCH=${BRANCH} PATCH={}

log/${COMMIT}-${PATCH}.log:
	@echo building $@
	@-make build COMMIT=${COMMIT} PATCH=${PATCH} >$@.tmp 2>&1
	@mv $@.tmp $@

build:v notqmail-${COMMIT}-${PATCH}
	make -C notqmail-${COMMIT}-${PATCH} it
	@echo ok

notqmail-${COMMIT}-${PATCH}:v notqmail.git
	rm -rf $@
	git -C notqmail.git fetch origin ${COMMIT}
	git -C notqmail.git archive --prefix=$@/ ${COMMIT} | tar xf -
	cd $@; patch -f -p 1 <../patch/${PATCH}.patch

notqmail.git:
	git clone --bare ${GIT} $@

README.md:v everything
	sh README.sh >$@

brokemaster:v
	@make patches BRANCH=${BRANCH}
	@make patches BRANCH=master
	sh brokemaster.sh ${BRANCH}

clean:v
	rm -rf notqmail-*/

v: # virtual target
