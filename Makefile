.PHONY: help verify check setup install install-full uninstall

help:
	@printf '%s\n' \
	  'Targets:' \
	  '  make verify       Run syntax checks and smoke tests' \
	  '  make check        Inspect installed network tools' \
	  '  make setup        Run guided interactive setup' \
	  '  make install      Install nt into ~/.local/bin' \
	  '  make install-full Install recommended packages, then nt' \
	  '  make uninstall    Remove installed files'

verify:
	./verify.sh

check:
	./bin/nt doctor

setup:
	./setup.sh

install:
	./install.sh

install-full:
	./install.sh --install-deps

uninstall:
	./uninstall.sh
