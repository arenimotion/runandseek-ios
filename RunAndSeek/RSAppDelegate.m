#import "RSAppDelegate.h"
#import "RSViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation RSAppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window =
      [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

  //Add in your API key here:
  [GMSServices provideAPIKey:@"AIzaSyBY6Jnb9FucT5hZa4L8lIuT9uA6DpUEOUA"];

  self.viewController = [[RSViewController alloc] init];
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
