//
//  AppDelegate.m
//  BasicAutolayout
//
//  Created by Damian Esteban on 11/3/15.
//  Copyright © 2015 Damian Esteban. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.rootViewController = [UIViewController new];
    UIView* mainview = self.window.rootViewController.view;
    
    UIView* v1 = [[UIView alloc] initWithFrame:CGRectMake(100, 111, 132, 194)];
    v1.backgroundColor = [UIColor greenColor];
    UIView* v2 = [UIView new];
    v2.backgroundColor = [UIColor redColor];
    UIView* v3 = [UIView new];
    v3.backgroundColor = [UIColor blueColor];
    
    [mainview addSubview:v1];
    [v1 addSubview:v2];
    [v1 addSubview:v3];
    
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    NSDictionary* views = NSDictionaryOfVariableBindings(v2, v3);
    
    [v1 addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:|[v2]|"
      options:0 metrics:nil views:views]];
    
    [v1 addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:|[v2(10)]"
      options:0 metrics:nil views:views]];
    
    [v1 addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"H:[v3(20)]|"
      options:0 metrics:nil views:views]];
    
    [v1 addConstraints:
     [NSLayoutConstraint
      constraintsWithVisualFormat:@"V:[v3(20)]|"
      options:0 metrics:nil views:views]];
    
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
