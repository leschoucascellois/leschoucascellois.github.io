# Deploying on Github Pages requires `remote_theme` but testing locally
# is much faster (and works offline) using `theme`. So, we remove the
# line that contains `remote_theme` and add a `theme` line instead.

.PHONY: serve
serve:
	sed -e 's|remote_theme: mmistakes/minimal-mistakes|theme: minimal-mistakes-jekyll|' _config.yml > _local_config.yml
	bundle exec jekyll serve --livereload --config _local_config.yml

.PHONY: clean
clean:
	git clean -fX
