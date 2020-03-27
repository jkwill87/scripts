# makefile
# jessy@jessywilliams.com


deploy = $(foreach script,\
$(wildcard ./$(1)/*),\
cp $(script) ${HOME}/bin/$(notdir $(basename $(script)));\
chmod +x ${HOME}/bin/$(notdir $(basename $(script)));)

help:
	@echo 'usage: make [bash, shell, python, all]'

all: bash shell python

bash:
	mkdir -p ${HOME}/bin
	$(call deploy,$@)

shell:
	mkdir -p ${HOME}/bin
	$(call deploy,$@)

python:
	mkdir -p ${HOME}/bin
	$(call deploy,$@)

.PHONY: bash shell python all
