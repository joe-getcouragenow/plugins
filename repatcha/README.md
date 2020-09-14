# Recaptcha

We need a recaptcha plugin that:
- works on all targets
- is only dependent on our systems.

Defeating
ALL of these can be defeated by building a BOT that takes a screen shot and seends to it a Amazon Mechanical TUrk like human service.
But The output from the humans can be make difficult IF it changes.
In other works the bot gets back from the Mechanical Turk data whose semantic instructions change.
- For example the result requires the bot to do different things.
- Pick locations, twist something.

Another way is to add a time limit. The Mechanical turks might be slower.
- time limit mapped to hardness of test.


https://github.com/leanflutter/flutter_tencent_captcha
- Its very mobile friendly due to only needed to swipe. 
- Bots will have problems breakng it.
- Has a plugin dependency that we dont want
- Can make it run off the our golang server as part of mod-account.
- Send image and answer ( encrypted )
- On Server, decrypt answer and check they got it.
- Need a list of 100 animals for images.

- Deektop, web, mobile works but plugin beak s it.


https://www.geetest.com/en/demo
- We can easily implement the Space Recaptcha using a golanf image renderer on the server.
- Solving requires reading and understanding the Test.
- Its possible to make it parametric
	- The text description can be a set of standard architypes that map to an image architytpe.
	- Pick the 

ALG

https://github.com/dchest/captcha
- pure golang
- audio and visual.

https://github.com/go-macaron/captcha

https://github.com/lifei6671/gocaptcha
- pure go. simple
- images with text are more fuzzy which is betetr


