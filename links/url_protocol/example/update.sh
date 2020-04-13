#!/bin/bash

sed -i '$ d' go/packaging/linux-deb/usr/share/applications/url_protocol_example.desktop
echo "Exec=/usr/lib/url_protocol_example/url_protocol_example %u" >> go/packaging/linux-deb/usr/share/applications/url_protocol_example.desktop
echo "MimeType=x-scheme-handler/gcn;" >> go/packaging/linux-deb/usr/share/applications/url_protocol_example.desktop


sed -i '$ d' go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
sed -i '$ d' go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<key>CFBundleURLTypes</key>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<array>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<dict>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<key>CFBundleURLName</key>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<string>gcn</string>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<key>CFBundleURLSchemes</key>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<array>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "<string>gcn</string>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "</array>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "</dict>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "</array>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "</dict>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
echo "</plist>" >> go/packaging/darwin-bundle/url_protocol_example.app/Contents/Info.plist.tmpl
