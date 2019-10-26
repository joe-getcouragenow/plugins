# https://github.com/gen2brain/go-fitz
dep:
	go get -u github.com/gen2brain/go-fitz
run:
	rm -rf bin
	mkdir bin
	cp *.pdf bin
	go build -o bin/main main.go
	bin/main