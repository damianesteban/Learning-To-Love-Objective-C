//
//  AppDelegate.m
//  FirstViewsNoStoryboard
//
//  Created by Damian Esteban on 10/23/15.
//  Copyright © 2015 Damian Esteban. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window =
    [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // customization point:
    self.window.rootViewController = [UIViewController new];
    UIView* mainView = self.window.rootViewController.view;
    
    UIView* v1 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:1 green:.3 blue:1 alpha:1];
    UIView* v2 = [[UIView alloc] initWithFrame:CGRectInset(v1.bounds, 10, 10)];
    v2.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0.2 alpha:0.8];
//    UIView* v3 = [[UIView alloc] initWithFrame:CGRectMake(43, 197, 160, 230)];
//    v3.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0.2 alpha:0.8];
    
//    [mainView addSubview:v1];
//    [mainView addSubview:v2];
//    [mainView addSubview:v3];
    
    [mainView addSubview: v1];
    [v1 addSubview: v2];
    //[mainView addSubview: v3];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
