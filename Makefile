
.PHONY: all
all: push


.PHONY: submodule
submodule:
	cd bundle && \
	git pull origin master && \
	cd -


.PHONY: push
push: submodule
	git add bundle && \
	git commit -am "coding ..." && \
	git push origin `git branch | grep \* | cut -d ' ' -f2`
