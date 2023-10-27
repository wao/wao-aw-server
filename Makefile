default: build

build : 
	docker build -t wao-aw-server .

run:
	docker run -it --rm -u 1000:1000 -v $(HOME)/.local/share/activitywatch:/home/awserver/.local/share/activitywatch wao-aw-server /bin/sh

runroot:
	docker run -it --rm -v $(HOME)/.config/joplin:$(HOME)/.config/joplin joplinterm /bin/sh
