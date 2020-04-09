package main

import (
	gcn_webview "github.com/getcouragenow/plugins/webview/gcn_webview/go"
	"github.com/go-flutter-desktop/go-flutter"
)

var options = []flutter.Option{
	flutter.WindowInitialDimensions(800, 1280),
	flutter.AddPlugin(&gcn_webview.GcnWebviewPlugin{}),
}
