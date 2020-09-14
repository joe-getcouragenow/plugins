# https://github.com/leanflutter/flutter_tencent_captcha

# Has a plugin dependency that we dont want
# Can make it run off the our golang server as part of mod-account.
# Send image and answer ( encrypted )
# On Server, decrypt answer and check they got it.
# Need a list of 100 animals for images.

# Deektop, web, mobile works but plugin beak s it.


LIB=github.com/leanflutter/flutter_tencent_captcha
LIB_FSPATH=$(GOPATH)/src/$(LIB)

FLU_SAMPLE_NAME=example
FLU_SAMPLE_FSPATH=$(LIB_FSPATH)/$(FLU_SAMPLE_NAME)

print:
	@echo $(LIB_FSPATH)
	@echo FLU_SAMPLE_NAME: $(FLU_SAMPLE_NAME)
	@echo FLU_SAMPLE_FSPATH: $(FLU_SAMPLE_FSPATH)

dep:
	git clone https://$(LIB) $(LIB_FSPATH)

dep-clean:
	rm -rf $(LIB_FSPATH)


### WEB

flu-web-run: ## flu-web-run
	flutter config --enable-web
	cd $(FLU_SAMPLE_FSPATH) && flutter run -d chrome

## Builds flutter web as a release version
flu-web-build: ## flu-web-build
	flutter config --enable-web
	cd $(FLU_SAMPLE_FSPATH) && flutter build web

### MOB

flu-mob-run: ## flu-mob-run
	cd $(FLU_SAMPLE_FSPATH) && flutter run -d all

## Fixes a common bug with IOS
flu-mob-fix:
	# webrtc fix
	# MIGHT have to apply this to CI also. Lets see.
	cd $(FLU_SAMPLE_FSPATH) && rm ios/Podfile.lock
	cd $(FLU_SAMPLE_FSPATH) && rm -rf ios/Pods
	cd $(FLU_SAMPLE_FSPATH) && flutter clean

flu-mob-build: ## flu-mob-build
	# ios
	# https://flutter.dev/docs/deployment/ios
	# change to ios 11 in xcode for runner and pods
	cd $(FLU_SAMPLE_FSPATH)/ios && pod install
	#cd $(FLU_SAMPLE_FSPATH) && flutter build ios

	cd $(FLU_SAMPLE_FSPATH) && 	flutter build ios --release --no-codesign


### DESK

## Inits Flutter Desktop
flu-desk-init: ## flu-desk-init
	cd $(FLU_SAMPLE_FSPATH) && hover init
	
## Runs Flutter Desktop
flu-desk-run: ## flu-desk-run
	cd $(FLU_SAMPLE_FSPATH) && hover run

flu-desk-build:
	# uses docker to build

	cd $(FLU_SAMPLE_FSPATH) && hover build darwin
	#cd $(FLU_SAMPLE_FSPATH) && hover build windows
	# broken: need to look into
	#cd $(SAMPLE_FSPATH) && hover build linux

flu-desk-buildrun: flu-desk-build

	# darwin
	open $(FLU_SAMPLE_FSPATH)/go/build/outputs/darwin/
	open $(FLU_SAMPLE_FSPATH)/go/build/outputs/darwin/$(FLU_SAMPLE_NAME)