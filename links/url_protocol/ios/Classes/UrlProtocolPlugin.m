#import "UrlProtocolPlugin.h"
#if __has_include(<url_protocol/url_protocol-Swift.h>)
#import <url_protocol/url_protocol-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "url_protocol-Swift.h"
#endif

@implementation UrlProtocolPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUrlProtocolPlugin registerWithRegistrar:registrar];
}
@end
