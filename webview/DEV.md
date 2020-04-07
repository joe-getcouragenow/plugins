# Dev

WebView needs to be agnostic

https://github.com/rodydavis/easy_web_view
- works on web and mobile automatically. Its wrapping the offical one.
- Has some other cools stuff
We have a go-flutter Webview: https://github.com/Winwisly100/hwebview
So let's combine it to be reusable. SO when hover init does the scan, it puts ours in automatically.
E.G: https://github.com/miguelpruivo/flutter_file_picker/blob/master/go/import.go.tmpl
And from flutter code you just reference it.
