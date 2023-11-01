ROOTDIR=.

clean:
	jb clean -a ${ROOTDIR}

build:
	PYDEVD_DISABLE_FILE_VALIDATION=1 jb build ${ROOTDIR}
ghp-import:
	ghp-import -n -p -f ${ROOTDIR}/_build/html

publish: clean build ghp-import

.phony: clean build ghp-import publish
