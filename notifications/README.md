# notifications

Notificatiosn fire to the OS and then when the user clicks on it they are routed to the right app and to the right page in the app ( aka deep linking).

## Mobile

There are 2 types:
- local
	- fired from the go embed layer and bubbled up to the OS notifications.
- remote
	- fired from our Server to the go embed layer and bubbled up to the OS notifications
- OS
	- ones fired from the the Apple and Google notifications system. Our Server will fire them.

https://github.com/MaikuB/flutter_local_notifications
- for mobile
- examples: https://github.com/yass0016/nextmed
	- It has a full scheduler based on calendar which is what we need for the Cal Module.
- TODO: match the plugin API to wok for Desktop.
- TODO: get golang notifications lib. Should be easy.

## Desktop

It works like this.

1. There is a systray app running on the desktop onbad golang
- it is essentially a Service. We dont want a real OS Service because the security model will not allow us to create desktop notiications.
- the same go embed code that runs on the mobile is running inside the systray, and as such the IO between the Flutter GUI and this systray will be over tcp and secured.
- the main thing is that when the code gets a event that it needs to show to the user, the systray will fire an OS Notification. The user clicks on the OS notification and then Flutter GUi opens and the deeplinking occurs to take the User to the exact route inside the GUi to show them the data that the event is about.
- The VPN will also be controlled from the System tray.




