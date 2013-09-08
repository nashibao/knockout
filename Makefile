
build: components index.js
	coffee -c tests/test.coffee
	@component build --dev

install: components build/build.min.js
	 component build --standalone knockout --out . --name knockout

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
