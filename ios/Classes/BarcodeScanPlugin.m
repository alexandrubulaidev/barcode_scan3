#import "BarcodeScanPlugin.h"
#if __has_include(<barcode_scan3/barcode_scan3-Swift.h>)
#import <barcode_scan3/barcode_scan3-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "barcode_scan3-Swift.h"
#endif

@implementation BarcodeScanPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBarcodeScanPlugin registerWithRegistrar:registrar];
}
@end
