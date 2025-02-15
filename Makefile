REBAR=$(shell which rebar3)

ifeq ($(REBAR),)
	$(error ERROR: rebar3 not found in PATH)
endif

all: compile

compile clean:
	@$(REBAR) $@

test:
	$(REBAR) eunit

run:
	$(REBAR) shell
