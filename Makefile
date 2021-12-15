OPTS:=-v -d $(HOME)/dotfiles

ifneq ($(wildcard $(HOME)/wotfiles),)
	OPTS+=-d $(HOME)/wotfiles
endif

.PHONY: ls
ls:
	@lsrc $(OPTS)

.PHONY: up
up:
	@rcup $(OPTS)

.PHONY: sym
sym:
	@rcup -K $(OPTS)

.PHONY: down
down:
	@rcdn $(OPTS)

