# gcn_webview

This Go package implements the host-side of the Flutter [gcn_webview](https://github.com/getcouragenow/plugins/webview/gcn_webview) plugin.

## Usage

Import as:

```go
import gcn_webview "github.com/getcouragenow/plugins/webview/gcn_webview/go"
```

Then add the following option to your go-flutter [application options](https://github.com/go-flutter-desktop/go-flutter/wiki/Plugin-info):

```go
flutter.AddPlugin(&gcn_webview.GcnWebviewPlugin{}),
```
