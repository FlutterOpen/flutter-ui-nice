#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
@import GooglePlaces;
@import GoogleMaps;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Replace YOUR_API_KEY with your Google Place API Key
  [GMSPlacesClient provideAPIKey:@"YOUR_API_KEY"];
  [GMSServices provideAPIKey:@"YOUR_API_KEY"];
  // Override point for customization after application launch.
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
