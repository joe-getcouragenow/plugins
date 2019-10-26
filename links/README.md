# Links

Build a test harness and get it working for Desktop and Mobile.


## Deeplinking and URL Schemes


We need deeplinking and URL Schemes, which is related to routes.

This is because we will build some modules as their own apps. This is so that the user can be looking at some Chat window ( or Doc) whilst also looking at Webrtc video, etc.

One app will want to open another app and take the user deep into a route.

Use case example:

- For desktop we only need to call into OUR apps, so maybe we can just call open with a env variable to tell it the route. Its hacky but might work.
- Also On Desktop, we will install a golang service so that notifications and Database server is ALWYS running, even if the GUI is not open.
	- The other option is to install a Systray ( heaps of libs for that) because a Service may not have the rights to make notifications.
	- A notification when clicked by the User needs to open the correct apps.
	- This is where we really need true Url Scheme !!

mobile:
https://pub.dev/packages/uni_links
https://github.com/avioli/uni_links


go-flutter:
- they have started it and need the desktop platform specific code. Should match the Flutter Plugin API calls of Mobile.
https://github.com/go-flutter-desktop/go-flutter/issues/276
https://github.com/go-flutter-desktop/go-flutter/issues/240

Apple
- https://developer.apple.com/documentation/uikit/inter-process_communication/allowing_apps_and_websites_to_link_to_your_content/defining_a_custom_url_scheme_for_your_app

Windows
- https://support.shotgunsoftware.com/hc/en-us/articles/219031308-Launching-applications-using-custom-browser-protocols
- we can do that from golang.



Link Text formatting
- https://github.com/aleksanderwozniak/link_text
- This will allow a link to be auto converted and i assume we can then hook into other apps.


https://github.com/ybbus/jsonrpc
- maybe....