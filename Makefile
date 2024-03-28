all:

up:
	git pull
	git status

clean:
	rm -rf .git .gitignore README.md Makefile