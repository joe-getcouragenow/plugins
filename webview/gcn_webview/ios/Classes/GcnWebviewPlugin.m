#import "GcnWebviewPlugin.h"
#if __has_include(<gcn_webview/gcn_webview-Swift.h>)
#import <gcn_webview/gcn_webview-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gcn_webview-Swift.h"
#endif

@implementation GcnWebviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGcnWebviewPlugin registerWithRegistrar:registrar];
}
@end
