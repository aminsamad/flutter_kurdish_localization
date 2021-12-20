#import "FlutterKurdishLocalizationPlugin.h"
#if __has_include(<flutter_kurdish_localization/flutter_kurdish_localization-Swift.h>)
#import <flutter_kurdish_localization/flutter_kurdish_localization-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_kurdish_localization-Swift.h"
#endif

@implementation FlutterKurdishLocalizationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterKurdishLocalizationPlugin registerWithRegistrar:registrar];
}
@end
