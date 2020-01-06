# layout

We need a good way to make it easy for GUI to work on Desktop and Mobile.

Typically You can use the Master Detail pattern.

Like in Telegram where the List of Users is the Master & a specific chat with a user is the Detail.

On Desktop you can show both. One Mobile the Master is a drawer you can pull out.

The whole point here is that it needs to adapt automatically at runtime

https://iirokrankka.com/2018/01/28/implementing-adaptive-master-detail-layouts/

todo
- more data on screen
	- add more test data to the Master and Details so we can see how it behaves with more data
- when you shrink it, it should show the Detail pane, not the Master pane.
	- If you are only in the Master pane focus, then prioritize showing the Master pane
- back button
	- is not implemented at all right now
	- web, there is none, because the browser one is used. Is an Ok way to do it i think. Feels more webbby.
	- desktop & mobile. Needs to show the back button in the right place depending on if the Master Pane is visible or not.


## other stuff

https://pub.dev/packages/align_positioned
https://github.com/marcglasberg/align_positioned

---

We need to call the "network" for blobs.

https://github.com/marcglasberg/network_to_file_image
- file and image in one
- caches and if cache miss then calls network. perfect
