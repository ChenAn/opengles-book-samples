//
//  MultiTextureAppDelegate.m
//  MultiTexture
//
//  Created by Dan Ginsburg on 6/17/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MultiTextureAppDelegate.h"
#import "EAGLView.h"
#import "RootViewController.h"

@implementation MultiTextureAppDelegate

@synthesize window;
@synthesize glView;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.rootViewController = [[RootViewController alloc] initWithNibName:nil bundle:nil];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
}


- (void)applicationWillResignActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 5.0;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 60.0;
}

@end
