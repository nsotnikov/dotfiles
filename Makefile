# Set the default goal if no targets were specified on the command line
.DEFAULT_GOAL = help
# Makes shell non-interactive and exit on any error
.SHELLFLAGS = -ec
# Variables
PROJECT_NAME = .dotfiles
# Avoid a conflict with a files of the same receipe name
.PHONY: help

db-import:  ## Import db from ... folder
	@echo "check.\c" && echo "check"

help:  ## Display this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[0;32m%-30s\033[0m %s\n", $$1, $$2}'
