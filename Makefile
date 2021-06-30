install:
	rsync -avxHAXP \
		--exclude '.git*' \
		--exclude 'LICENSE' \
		--exclude '*.md' \
		--exclude '__pycache__' \
		./ ~/;

	pushd ~/.vim; \
	. ./setup.sh; \
	popd

update:
	git pull
