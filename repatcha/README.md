# Recaptcha

We need a recaptcha plugin that:
- works on all targets
- is only dependent on our systems.


https://github.com/leanflutter/flutter_tencent_captcha
- We can write a golang package that has a list of 50 animal images.
- We can design it to be parametric because on the server we just chose 1 or 10 locations where the jigsaw piece is missing.  
- When we serve the Widget we encode the data describing where the jigsaw piece NEEDS to be and encrypt that into the client RPC. That way we have no state on the server. 
- When the user sends the response back, we just unpack the encrypted data and check if the user slid the jigsaw piece to the right location.
- Need a golang backend to drive this
	- Should be part of Mod-account of course as that is generic.