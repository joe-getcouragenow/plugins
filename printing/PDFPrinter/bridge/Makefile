

# https://github.com/maintell/PrinterBridge


LIB_NAME=printerbridge
LIB=github.com/maintell/$(LIB_NAME)
LIB_BRANCH=master
LIB_FSPATH=$(GOPATH)/src/$(LIB)

LIB_BIN_NAME=$(LIB_NAME)
LIB_BIN_FSPATH=$(PWD)/bin/$(LIB_BIN_NAME)

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)


print:
	@echo
	@echo LIB_NAME: $(LIB_NAME)
	@echo LIB: $(LIB)
	@echo LIB_BRANCH: $(LIB_BRANCH)
	@echo LIB_FSPATH: $(LIB_FSPATH)

	@echo
	@echo LIB_BIN_NAME: $(LIB_BIN_NAME)
	@echo LIB_BIN_FSPATH: $(LIB_BIN_FSPATH)
	@echo

git-clone:
	# need flutter desktop :)
	mkdir -p $(LIB_FSPATH)
	cd $(LIB_FSPATH) && cd .. && rm -rf $(LIB_NAME) && git clone ssh://git@$(LIB).git
	cd $(LIB_FSPATH) && git checkout $(LIB_BRANCH)
git-pull:
	cd $(LIB_FSPATH) && git pull
git-clean:
	rm -rf $(LIB_FSPATH)

code:
	code $(LIB_FSPATH)

os-dep: ## os-dep


init:
	cd $(LIB_FSPATH) && go mod init
	
icon:
	# icon
	cp icon.png $(LIB_FSPATH)/icon
	cd $(LIB_FSPATH)/icon && chmod +x *.sh
	cd $(LIB_FSPATH)/icon && ./make_icon.sh icon.png

build:
	mkdir -p bin

build-windows: build
	cd $(LIB_FSPATH) && GOOS=windows GOARCH=386 go build -ldflags -H=windowsgui -o $(LIB_BIN_FSPATH).exe .

build-darwin: build
	cd $(LIB_FSPATH) && GOOS=darwin GOARCH=amd64 go build -o $(LIB_BIN_FSPATH) .
run:	
	# runs its web server on localhost:18080
	$(LIB_BIN_FSPATH) -addr localhost:18080
web:
	open http://localhost:18080/
