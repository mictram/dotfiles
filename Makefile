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

libinput:
	rsync libinput/99-any-mouse.conf /etc/X11/xorg.conf.d/99-any-mouse.conf

update:
	git pull
