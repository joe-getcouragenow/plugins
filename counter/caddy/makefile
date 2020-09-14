# includes
BOILERPLATE_FSPATH=./../../boilerplate

include $(BOILERPLATE_FSPATH)/core/help.mk
include $(BOILERPLATE_FSPATH)/core/os.mk
include $(BOILERPLATE_FSPATH)/core/tool.mk
include $(BOILERPLATE_FSPATH)/core/go.mk


LIB_BIN=$(PWD)/bin

# Caddy
# https://github.com/caddyserver/caddy/releases/tag/v2.1.1
# linux: https://github.com/caddyserver/caddy/releases/download/v2.1.1/caddy_2.1.1_linux_amd64.tar.gz
# mac:https://github.com/caddyserver/caddy/releases/download/v2.1.1/caddy_2.1.1_mac_amd64.tar.gz
# windows: https://github.com/caddyserver/caddy/releases/download/v2.1.1/caddy_2.1.1_windows_amd64.zip

CADDY_VERSION=2.1.1
CADDY_URL_FILENAME=caddy_$(CADDY_VERSION)_mac_amd64.tar.gz
CADDY_URL=https://github.com/caddyserver/caddy/releases/download/v$(CADDY_VERSION)/$(CADDY_URL_FILENAME)
CADDY_DOWNLOAD_BIN=$(LIB_BIN)/$(CADDY_URL_FILENAME)
CADDY_BIN=$(LIB_BIN)/caddy_2/caddy


this-print:
	@echo
	@echo LIB_BIN: $(LIB_BIN)
	@echo

	@echo
	@echo CADDY_VERSION: $(CADDY_VERSION)
	@echo CADDY_URL_FILENAME: $(CADDY_URL_FILENAME)
	@echo CADDY_URL: $(CADDY_URL)
	@echo CADDY_DOWNLOAD_BIN: $(CADDY_DOWNLOAD_BIN)
	@echo CADDY_BIN: $(CADDY_BIN)
	@echo


deploy-dep:
	# downlaoder
	GO111MODULE=on go get -u github.com/astaxie/bat
	# archiver
	GO111MODULE=on go get -v github.com/mholt/archiver/cmd/arc
deploy-dep-clean:
	rm -f $(GOPATH)/bin/bat
	rm -f $(GOPATH)/bin/arc

### CADDY dep
	
deploy-caddy-dep: deploy-dep deploy-caddy-clean 
	mkdir -p $(LIB_BIN)
	bat -download=true $(CADDY_URL)
	
	cp $(CADDY_URL_FILENAME) $(CADDY_DOWNLOAD_BIN)
	rm -f $(CADDY_URL_FILENAME)

	# unarchive it
	cd $(LIB_BIN) && arc unarchive $(CADDY_DOWNLOAD_BIN)

	# chmd it
	chmod +x $(CADDY_BIN)
	
deploy-caddy-clean:
	rm -Rf $(LIB_BIN)

deploy-run:
	$(CADDY_BIN) reverse-proxy --to 127.0.0.1:9000