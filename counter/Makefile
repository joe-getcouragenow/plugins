# includes
BOILERPLATE_FSPATH=./../boilerplate

include $(BOILERPLATE_FSPATH)/core/help.mk
include $(BOILERPLATE_FSPATH)/core/os.mk
include $(BOILERPLATE_FSPATH)/core/tool.mk
include $(BOILERPLATE_FSPATH)/core/flu.mk
include $(BOILERPLATE_FSPATH)/core/go.mk

override FLU_SAMPLE_NAME = counter
override FLU_SAMPLE_FSPATH = $(PWD)/$(FLU_SAMPLE_NAME)


this-print:
	$(MAKE) os-print
	$(MAKE) flu-print
	$(MAKE) go-print

this-flu-create:
	# One time
	flutter create counter

this-build:
	$(MAKE) flu-web-build

this-deploy
