JEKYLL = docker run -ti --rm -v "$(shell pwd):/srv/jekyll" -p 4000:4000 jekyll/jekyll:3.8.5
RUNNER = `whoami`
COMMIT = `git rev-parse --short HEAD`

test:
	@${JEKYLL} jekyll serve --watch -H 0.0.0.0 --drafts

build:
	@echo "Building site"
	@${JEKYLL} jekyll build

update:
	@${JEKYLL} bundle update

deploy: build
	@git checkout master
	@sudo chown -R ${RUNNER}. _site && sudo cp -r _site/* . && sudo rm -rf _*/
	@git add --all . && git commit -m "Jekyll deployment from commit ${COMMIT}"
	@echo "You can now push master"
	@echo "Once everything is valid, git checkout develop && sudo git clean -f -d"
	@python -m SimpleHTTPServer 4000

clean:
	@rm -rf _site

fix_spaces:
	find . -name "*.md" -exec sed -i 's/\xc2\xa0/ /g' {} \;
