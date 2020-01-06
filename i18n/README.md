# i18n

Golang and flutter

## Flow

Normally:

1. Use the bootstrap gsheet tool to pull the translations

2. Then run the ARB to JSON and visa versa tools

3. Then use the normal flutter i18 n tooling.

Opposite:

Sometimes you want to know what your code calls for translations and what is over in the google sheets.

There may be a key missing in the google sheets Or keys orphaned in the google sheets.

We need to write a tool that uses reflection over the dart code to do this.


## ARBS to JSON

Arb IS the default format for Flutter.

SO we need a way to convert back and forth between ARB and JSON

https://github.com/bmw-tech/arb-converter-cli



