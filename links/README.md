# Links

url_launcher.
- from ANY app, opens the Web Browser.
- have the hover one: https://github.com/go-flutter-desktop/plugins/tree/master/url_launcher

Deeplink
- from a web browser, opens the app and routes to the correct page.
- there is no hover equivalent.
	- See DEV.md to see how we can use the OS to do it.

-----

Share to another APP
- shares something to another app.
	- for mobile its obvious.
	- for web, there is no equivalent.
	- for desktop, needs to open the other app on the desktop.
		- 2 options:
			- 1. We want to share to our OWN apps via message bus ( IPC. On Windows called named pipes ). Prefer NOT
				- See DEV.md to see how we can use the OS to do it.
			- 2. Opens the Web browser (Url Launcher), and then using Deeplinking (unilinks), opens the correct local app.
				- E.g: https://github.com/marchdev-tk/cross_share/blob/master/pubspec.yaml

Share to another of your devices.
- we do this via out own server later..
