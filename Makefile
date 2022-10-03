
serve:
	arch -x86_64 bundle exec jekyll serve --livereload

deploy: build push
	echo "Deploying ..."

build:
	arch -x86_64 bundle exec jekyll build

push:
	cd _site
	git add .
	git commit -m "update website"
	git push
	cd -
