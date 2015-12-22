//
//  RootViewController.m
//  Hello_Triangle
//
//  Created by Chen An on 2015/12/22.
//
//

#import "RootViewController.h"
#import "EAGLView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    EAGLView * view = (EAGLView *)self.view;
    view.animationInterval = 1.0 / 60.0;
    [view startAnimation];
}

- (void)setUpNotifications
{
    NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(handleDidBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [nc addObserver:self selector:@selector(handleWillResignActive:) name:UIApplicationWillResignActiveNotification object:nil];
}

- (void)cleanUpNotifications
{
    NSNotificationCenter * nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
    [nc removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
}

- (void)handleDidBecomeActive:(NSNotification *)n
{
    EAGLView * view = (EAGLView *)self.view;
    view.animationInterval = 1.0 / 60.0;
}

- (void)handleWillResignActive:(NSNotification *)n
{
    EAGLView * view = (EAGLView *)self.view;
    view.animationInterval = 1.0 / 5.0;
}

@end
