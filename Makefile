all:

up:
	git pull
	git status

clean:
	rm -rf .git .gitignore test Makefile README.md

test:
	@echo "Running math tests..."
	lua test/testMath.lua
	@echo "Running math2D tests..."
	lua test/testMath2D.lua
	@echo "Running stringify tests..."
	lua test/testStringify.lua
	@echo "Running tables tests..."
	lua test/testTables.lua
