package utils

import (
	"encoding/json"
	"fmt"
	"log"
	"net/url"
	"testing"
)

func TestParseURL(t *testing.T) {
	u, err := url.Parse("gcn:///simple/second?message=Hello&age=25")

	if err != nil {
		log.Println(err)
	}

	fmt.Println(u.Path)

	data, err := json.Marshal(u.Query())
	fmt.Println(string(data), err)
	fmt.Println(u.Scheme)
}
