JEKYLL = docker run --rm -v "$(shell pwd):/src" -p 4000:4000 grahamc/jekyll

test:
	@${JEKYLL} serve --watch -H 0.0.0.0 --drafts

deploy:
	@echo "Building site"
	@${JEKYLL} build
	@git checkout master
	@sudo cp -r _site/* . && sudo rm -rf _*/
	@git add --all . && git commit -m "Jekyll deployment"
	@git checkout develop && sudo git clean -f -d
	@echo "You can now push master"
