
VERSION := $(shell sed -E -n -e "s/^version: +([0-9.+]+).*/\1/p" pubspec.yaml)
# VERSION := $(shell ./scripts/version.sh)
VERSION_CODE := $(shell sed -E -n -e "s/^versionCode: +([0-9.]+)/\1/p" pubspec.yaml)

.PHONY: test

all:

version:
	@echo "${VERSION}"

outdated:
	fvm dart pub outdated

publish:
	fvm dart pub publish

