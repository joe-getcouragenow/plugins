# video

We have a Problem with playing videos because there is no video player for Dekstop.

We also have the same problem with the WebRTC Vidoe.

SO on Desktop we use a WebView and open a window from the main Flutter Desktop window.
- See the Plugins/Webview foolder for that

---

Make it a Proper Clustered Server
https://github.com/zalando/skipper
https://github.com/zalando-stups/skrop
- image server that uses skippper
- easy to add the use it to also transcode youtube videos to mp4.


---

https://github.com/ja2375/FluTube

Flutter web is NOW supported for Video
https://github.com/flutter/plugins/tree/master/packages/video_player/video_player_web

This under the hood uses the Chewie Video Player and so only works on Mobile.

- This opens the door to use running desktop on a WebView

- Maybe also the Webrtc works there too ?


---

WebRTC approach

Another idea is to just use the WebRTC lib
https://github.com/pion/ion/issues/30

We transcode all videos beforehand on our servers. We would use a golang lib to do this.

https://github.com/rylio/ytdl

https://github.com/iawia002/annie

Then to convert it to a format that Webrtc accepts we would use the pion media libs.

For Desktop or Mobile we can do this in the Background Service that is written in golang.
For Web, the Server would do it.