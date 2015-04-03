JEKYLL = docker run --rm -v "$(shell pwd):/src" -p 4000:4000 grahamc/jekyll
RUNNER = `whoami`
COMMIT = `git rev-parse --short HEAD`

test:
	@${JEKYLL} serve --watch -H 0.0.0.0 --drafts

deploy:
	@echo "Building site"
	@${JEKYLL} build
	@git checkout master
	@sudo chown -R ${RUNNER}. _site && sudo cp -r _site/* . && sudo rm -rf _*/
	@git add --all . && git commit -m "Jekyll deployment from commit ${COMMIT}"
	@echo "You can now push master"
	@echo "Once everything is valid, git checkout develop && sudo git clean -f -d"
	@python -m SimpleHTTPServer 4000
