# PDF Printer

So once we are generating a PDF, we need a way to print it on Mobile and Desktop.




## Mobile
- https://github.com/DavBfr/dart_pdf/tree/master/printing
- search: https://github.com/search?utf8=%E2%9C%93&q=pdf+language%3ADart&type=Repositories&ref=advsearch&l=Dart&l=
	- https://github.com/andrey-ushakov/esc_pos_printer
		- ONLY for thermal printers
	- https://github.com/benoitverstraete/network_pos_printer
		- ONLY text for Thermal printer
	- https://github.com/cadaniel/flutter_pdf_printer
		- This one does it from a File, which we might want.



## Desktop Candidates

Need to build a Print Dialog.
- Access this natively wont work i think because you need to regen the PDF and its proxy image everytime a user change the print its paper size and orientation.
- SO i think its easier to build a Flutter Printer Dialog.
	- You then make golang calls to get printers and their propertier and then build the GUI
	- Then you can also do PDF gen and proxy image gen as the user changes Printer preferences.

- suggest using this for linux / osx : https://github.com/phin1x/go-ipp
- standard: https://www.pwg.org/ipp/everywhere.html
- see: https://github.com/jung-kurt/gofpdf/issues/320#issuecomment-540356567
- It might work on windows too .

https://github.com/google/cloud-print-connector
- has code we can use to access print api on desktop.

https://github.com/apple/cups
- for referece

