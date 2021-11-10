#import "CustomGeofencingPlugin.h"
#if __has_include(<custom_geofencing/custom_geofencing-Swift.h>)
#import <custom_geofencing/custom_geofencing-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_geofencing-Swift.h"
#endif

@implementation CustomGeofencingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomGeofencingPlugin registerWithRegistrar:registrar];
}
@end
