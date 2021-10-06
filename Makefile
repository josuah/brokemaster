GIT = https://github.com/notqmail/notqmail
SHA = $$(git -C notqmail.git rev-parse ${BRANCH})

all:v
	@xargs -I {} -n 1 make patches BRANCH={} <conf-branch

branches:v
	@echo '>>> building all branches for patch ${PATCH}'
	@xargs -I {} -n 1 make one BRANCH={} PATCH=${PATCH} <conf-branch

patches:v
	@echo '>>> building all patches for branch ${BRANCH}'
	@ls patch | sed 's/.patch$$//' |\
	 xargs -I {} -n 1 make one BRANCH=${BRANCH} PATCH={}

one:v notqmail.git
	@make log/${SHA}-${PATCH}.log COMMIT=${SHA} PATCH=${PATCH}

log/${COMMIT}-${PATCH}.log:
	@echo building $@
	@-make build COMMIT=${COMMIT} PATCH=${PATCH} >$@.tmp 2>&1
	@mv $@.tmp $@

build:v notqmail-${COMMIT}-${PATCH}
	make -C notqmail-${COMMIT}-${PATCH} it
	@echo ok

notqmail-${COMMIT}-${PATCH}: notqmail.git patch/${PATCH}.patch
	rm -rf $@
	git -C notqmail.git fetch origin ${COMMIT}
	git -C notqmail.git archive --prefix=$@/ ${COMMIT} | tar xf -
	cd $@; patch -f -p 1 <../patch/${PATCH}.patch

notqmail.git:
	git clone --bare ${GIT} $@

README.md:v all
	sh README.sh >$@

brokemaster:v
	@make patches BRANCH=${BRANCH}
	@make patches BRANCH=master
	sh brokemaster.sh ${BRANCH}

clean:v
	rm -rf notqmail-*/

v: # virtual target
