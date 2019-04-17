#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#include <WXApi.h>
#include <FluwxResponseHandler.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    return [WXApi handleOpenURL:url delegate:[FluwxResponseHandler defaultManager]];
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options{
    return [WXApi handleOpenURL:url delegate:[FluwxResponseHandler defaultManager]];
}

@end
