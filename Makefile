# This is a regular comment, that will not be displayed

## ----------------------------------------------------------------------
## This is a help comment. The purpose of this Makefile is to demonstrate
## a simple help mechanism that uses comments defined alongside the rules
## @grep -h '##' $(MAKEFILE_LIST) | grep -v 'grep -h' | sed -e 's/\\$$//' | sed -e 's/##//'
## @grep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'
##
## ----------------------------------------------------------------------
##

# Avoid a conflict with a files of the same receipe name
.PHONY: help


## Show this help.
help:
	@grep -h '##' $(MAKEFILE_LIST)
    #@grep -h '##' $(MAKEFILE_LIST) | grep -v 'grep -h' | sed -e 's/\\$$//' | sed -e 's/##//'
    #@grep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'


# Everything below is an example
target00:         ## This message will show up when typing 'make help'
	@echo does nothing
 
target01:         ## This message will also show up when typing 'make help'
	@echo does something
 
# Remember that targets can have multiple entries (if your target specifications are very long, etc.)
target02:         ## This message will show up too!!!
target02: target00 target01
	@echo does even more