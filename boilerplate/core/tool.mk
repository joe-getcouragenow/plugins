
# path to too binaries
TOOL_ROOT_FSPATH=$(GOPATH)/bin

# ADD all tools here !!!

TOOL_DUMMY_BIN_NAME=bs-dummy
TOOL_DUMMY_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_DUMMY_BIN_NAME}

TOOL_LANG_BIN_NAME=bs-lang
TOOL_LANG_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_LANG_BIN_NAME}

TOOL_HOVER_BIN_NAME=bs-hover
TOOL_HOVER_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_HOVER_BIN_NAME}

TOOL_HUGO_BIN_NAME=bs-hugo
TOOL_HUGO_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_HUGO_BIN_NAME}

TOOL_PROTODOC_BIN_NAME=bs-protodoc
TOOL_PROTODOC_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_PROTODOC_BIN_NAME}

TOOL_PROTOFIG_BIN_NAME=bs-protofig
TOOL_PROTOFIG_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_PROTOFIG_BIN_NAME}

TOOL_PROTOC_GEN_CONFIGDEF_BIN_NAME=protoc-gen-configdef
TOOL_PROTOC_GEN_CONFIGDEF_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_PROTOC_GEN_CONFIGDEF_BIN_NAME}

TOOL_PROTODB_BIN_NAME=bs-protodb
TOOL_PROTODB_BIN_FSPATH=${TOOL_ROOT_FSPATH}/${TOOL_PROTODB_BIN_NAME}

## Print all tools
tool-print:
	@echo
	@echo -- TOOL Print: start --
	@echo

	@echo
	@echo TOOL_ROOT_FSPATH: 							$(TOOL_ROOT_FSPATH)

	@echo
	@echo TOOL_DUMMY_BIN_NAME: 							$(TOOL_DUMMY_BIN_NAME)
	@echo TOOL_DUMMY_BIN_FSPATH: 						$(TOOL_DUMMY_BIN_FSPATH)

	@echo
	@echo TOOL_LANG_BIN_NAME: 							$(TOOL_LANG_BIN_NAME)
	@echo TOOL_LANG_BIN_FSPATH: 						$(TOOL_LANG_BIN_FSPATH)

	@echo
	@echo TOOL_HOVER_BIN_NAME: 							$(TOOL_HOVER_BIN_NAME)
	@echo TOOL_HOVER_BIN_FSPATH: 						$(TOOL_HOVER_BIN_FSPATH)

	@echo
	@echo TOOL_HUGO_BIN_NAME: 							$(TOOL_HUGO_BIN_NAME)
	@echo TOOL_HUGO_BIN_FSPATH: 						$(TOOL_HUGO_BIN_FSPATH)

	@echo
	@echo TOOL_PROTODOC_BIN_NAME: 						$(TOOL_PROTODOC_BIN_NAME)
	@echo TOOL_PROTODOC_BIN_FSPATH: 					$(TOOL_PROTODOC_BIN_FSPATH)
	
	@echo
	@echo TOOL_PROTOC_GEN_CONFIGDEF_BIN_NAME: 			$(TOOL_PROTOFIG_BIN_NAME)
	@echo TOOL_PROTOC_GEN_CONFIGDEF_BIN_FSPATH: 		$(TOOL_PROTOFIG_BIN_FSPATH)
	
	@echo
	@echo TOOL_PROTOFIG_BIN_NAME: 						$(TOOL_PROTOFIG_BIN_NAME)
	@echo TOOL_PROTOFIG_BIN_FSPATH: 					$(TOOL_PROTOFIG_BIN_FSPATH)
	
	@echo
	@echo TOOL_PROTODB_BIN_NAME: 						$(TOOL_PROTODB_BIN_NAME)
	@echo TOOL_PROTODB_BIN_FSPATH: 						$(TOOL_PROTODB_BIN_FSPATH)
	
	@echo
	@echo -- TOOL Print : end --
	@echo

## Gets the build tools via go get and puts them in the right location.
tool-get:

	# dummy
	go install github.com/getcouragenow/core-runtime/tool/dummy
	cp $(TOOL_ROOT_FSPATH)/dummy $(TOOL_DUMMY_BIN_FSPATH)

	# hover
	go install github.com/getcouragenow/core-runtime/tool/hover
	cp $(TOOL_ROOT_FSPATH)/hover $(TOOL_HOVER_BIN_FSPATH)

	# lang
	go install github.com/getcouragenow/core-runtime/tool/lang
	cp $(TOOL_ROOT_FSPATH)/lang $(TOOL_LANG_BIN_FSPATH)

tool-delete:
	rm $(TOOL_DUMMY_BIN_FSPATH)
	rm $(TOOL_HOVER_BIN_FSPATH)
	rm $(TOOL_LANG_BIN_FSPATH)