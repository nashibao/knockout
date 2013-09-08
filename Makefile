
build: components index.js
	@component build --dev

install: components build/build.min.js
	 component build --standalone knockout --out . --name knockout

min: components index.js
	uglifyjs -o knockout.min.js knockout.js

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
