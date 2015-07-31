.PHONY: test

test:
	node_modules/.bin/mocha --compilers coffee:coffee-script/register test

build: dist/distance.js

dist/distance.js: distance.coffee
	@mkdir -p $(dir $@)
	node_modules/.bin/coffee -bc -o $(dir $@) $<

