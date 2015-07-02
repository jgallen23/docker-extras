PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
BINS = $(wildcard bin/docker-*)

install:
	@echo "... installing bins to $(DESTDIR)$(BINPREFIX)"
	@$(foreach BIN, $(BINS), \
		echo "... installing $(notdir $(BIN))"; \
		cp -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)

uninstall:
	@$(foreach BIN, $(BINS), \
		echo "removing $(notdir $(BIN))"; \
		rm -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)

.PHONY: install uninstall
