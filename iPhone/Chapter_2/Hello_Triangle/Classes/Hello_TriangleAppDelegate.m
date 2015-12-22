//
//  Hello_TriangleAppDelegate.m
//  Hello_Triangle
//
//  Created by Dan Ginsburg on 6/13/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Hello_TriangleAppDelegate.h"
#import "EAGLView.h"
#import "RootViewController.h"

@implementation Hello_TriangleAppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.rootViewController = [[RootViewController alloc] initWithNibName:nil bundle:nil];
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}

@end
