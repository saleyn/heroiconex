all: compile

deps:
	mix $@.get

compile:
	mix $@

run:
	iex -S mix run

test:
	mix $@

rebuild: clean compile

clean:
	rm -fr lib/{solid,outline,mini}.ex _build/lib/heroicons_codegen

.PHONY: deps compile test
