.PHONY: help verify check selftest setup reset install install-full update uninstall

help:
	@printf '%s\n' \
	  'Targets:' \
	  '  make verify       Run syntax checks and smoke tests' \
	  '  make check        Inspect installed network tools' \
	  '  make selftest     Run nt selftest' \
	  '  make setup        Run guided interactive setup' \
	  '  make reset        Remove installed files, then run setup' \
	  '  make install      Install nt into ~/.local/bin' \
	  '  make install-full Install recommended packages, then nt' \
	  '  make update       Pull latest changes, then install' \
	  '  make uninstall    Remove installed files'

verify:
	./verify.sh

check:
	./bin/nt doctor

selftest:
	./bin/nt selftest

setup:
	./setup.sh

reset:
	./setup.sh --reset

install:
	./install.sh

install-full:
	./install.sh --install-deps

update:
	./install.sh --update

uninstall:
	./uninstall.sh
