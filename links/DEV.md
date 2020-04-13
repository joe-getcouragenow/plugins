# Links

Build a test harness and get it working for Desktop and Mobile.

## TODO

Test : https://github.com/go-flutter-desktop/go-flutter/issues/276
````

hover run --route "/XXX" 
````

https://github.com/marchdev-tk/cross_share
- works on Web, mobile and Desktop.

## Deeplinking and URL Schemes


We need deeplinking and URL Schemes, which is related to routes.

Use Case.
This is because we will build some modules as their own apps. This is so that the user can be looking at some Chat window ( or Doc) whilst also looking at Webrtc video, etc.
One app will want to open another app and take the user deep into a route.

mobile:
https://pub.dev/packages/uni_links
https://github.com/avioli/uni_links


go-flutter:
- they have started it and need the desktop platform specific code. Should match the Flutter Plugin API calls of Mobile.

https://github.com/go-flutter-desktop/go-flutter/issues/240




Link Text formatting
Windows, Applie and Linx :)
- https://support.shotgunsoftware.com/hc/en-us/articles/219031308-Launching-applications-using-custom-browser-protocols
- we can do that from golang.

Apple
- https://developer.apple.com/documentation/uikit/inter-process_communication/allowing_apps_and_websites_to_link_to_your_content/defining_a_custom_url_scheme_for_your_app

https://stackoverflow.com/questions/2418910/osx-defining-a-new-url-handler-that-points-straight-at-a-python-script

Linux:
https://unix.stackexchange.com/questions/497146/create-a-custom-url-protocol-handler
- https://github.com/aleksanderwozniak/link_text
- This will allow a link to be auto converted and i assume we can then hook into other apps.
https://unix.stackexchange.com/questions/497146/create-a-custom-url-protocol-handler

Windows:
https://wixtoolset.org/documentation/manual/v3/howtos/files_and_registry/write_a_registry_entry.html

https://stackoverflow.com/questions/389204/how-do-i-create-my-own-url-protocol-e-g-so

https://github.com/ybbus/jsonrpc
- maybe....