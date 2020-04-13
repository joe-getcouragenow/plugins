# url_protocol_example

Demonstrates how to use the url_protocol plugin.

## Getting Started

You can change the test url in: `go/cmd/import-url_protocol-plugin.go`

options = append(options, flutter.AddPlugin(&url_protocol.UrlProtocolPlugin{
    Scheme:  "gcn",
    Host:    "getcouragenow",
    URLTest: "gcn://getcouragenow/second?message=Hello%20using%20url%20Protocol",
}))

```Run example
hover run
```