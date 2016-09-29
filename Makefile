.PHONY: all clean

all: paper.md paper.html

paper.md: paper/sections/*.md
	cd paper/sections; cat *.md > paper.md
	cd paper/sections; mv paper.md ../

paper.html: paper/paper.md
	cd paper; pandoc paper.md -s -o paper.html

clean:
	cd paper; rm -f paper.html paper.md
