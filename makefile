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
	$(call deploy,$@)

shell:
	$(call deploy,$@)

python:
	$(call deploy,$@)

.PHONY: bash shell python all
