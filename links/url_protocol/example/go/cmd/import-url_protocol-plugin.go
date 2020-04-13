package main

// DO NOT EDIT, this file is generated by hover at compile-time for the url_protocol plugin.

import (
	url_protocol "github.com/getcouragenow/plugins/links/url_protocol/go"
	flutter "github.com/go-flutter-desktop/go-flutter"
)

func init() {
	// Only the init function can be tweaked by plugin maker.
	options = append(options, flutter.AddPlugin(&url_protocol.UrlProtocolPlugin{
		Scheme:  "gcn",
		Host:    "",
		URLTest: "gcn:///second?message=Hello%20using%20url%20Protocol",
	}))
}
