ROOTDIR=.

clean:
	jb clean -a ${ROOTDIR}

build:
	jb build ${ROOTDIR}
ghp-import:
	ghp-import -n -p -f ${ROOTDIR}/_build/html

publish: clean build ghp-import

.phony: clean build ghp-import publish
