# url_protocol

This Go package implements the host-side of the Flutter [url_protocol](https://github.com/getcouragenow/plugins/links/url_protocol) plugin.

## Usage

Import as:

```go
import url_protocol "github.com/getcouragenow/plugins/links/url_protocol/go"
```

Then add the following option to your go-flutter [application options](https://github.com/go-flutter-desktop/go-flutter/wiki/Plugin-info):

```go
flutter.AddPlugin(&url_protocol.UrlProtocolPlugin{
    scheme: "gcn",
    host: "getcouragenow",
    URLTest: "gcn://getcouragenow/second?message=Hello%20World",
}),
```
