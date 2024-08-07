USER_GROUP := $(shell id -u):$(shell id -g)
JEKYLL ?= docker run --rm -p 4000:4000 -v "$(PWD):/srv/jekyll" -v "$(PWD)/vendor/bundle:/usr/local/bundle" -it jekyll/jekyll:4.2.0

.PHONY: install update serve
install:
	$(JEKYLL) bundle install
update:
	$(JEKYLL) bundle update jekyll-theme-hydejack
serve:
	$(JEKYLL) jekyll serve
test:
	$(JEKYLL) bash
