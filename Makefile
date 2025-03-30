# helpers
_copy-data:
	cp environment-files/readthedocs.yml book/_static/environment.yml
	@if [ -d "book/data/" ]; then \
		cp -r book/data/ book/_build/html/data/; \
		echo "Copied data directory."; \
	else \
		echo "book/data/ not found, skipping copy."; \
	fi

_build-html:
	cd book && jupyter book build --html

_build-fast-preview:
	cd book && Q2DOC_FASTMODE= jupyter book build --html

_build-preview:
	cd book && Q2DOC_PREVIEW= jupyter book build --html

# main targets
autodoc:
	cd book/references && q2doc autodoc --no-validate .

html: _build-html _copy-data

fast-preview: _build-fast-preview _copy-data

preview: _build-preview _copy-data

serve:
	npx serve book/_build/html/ -p 4000

clean:
	rm -rf book/_build/html/