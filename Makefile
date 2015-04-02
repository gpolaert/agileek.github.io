JEKYLL = docker run --rm -v "$(shell pwd):/src" -p 4000:4000 grahamc/jekyll

test:
	@${JEKYLL} serve --watch -H 0.0.0.0 --drafts

deploy:
	runner =`whoami`
	@echo "Building site"
	@${JEKYLL} build
	@git checkout master
	@sudo chown -R ${runner} _site && sudo cp -r _site/* . && sudo rm -rf _*/
	@git add --all . && git commit -m "Jekyll deployment"
  @echo "You can now push master"
