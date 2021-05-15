check_links: build
	bundle exec htmlproofer --empty_alt_ignore --url-swap "^\/ComputingBootCamp:" --url-ignore "/www.mouser.com/,/www.epectec.com/" ./_0site

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve

clean:
	rm -rf _site