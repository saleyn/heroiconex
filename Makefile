all: compile

update deps:
	mix deps.get

compile: deps
	mix $@

run:
	iex -S mix run

test docs:
	mix $@

generate: clean compile

clean:
	rm -fr lib/{solid,outline,mini,icon}.ex _build/lib/heroiconex

distclean: clean
	rm -fr _build deps

.PHONY: update compile test doc
