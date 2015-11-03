//
//  AppDelegate.m
//  BasicViewTransforms
//
//  Created by Damian Esteban on 10/31/15.
//  Copyright © 2015 Damian Esteban. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = [UIViewController new];
    UIView* mainView = self.window.rootViewController.view;
    UIView* v1 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    UIView* v2 = [[UIView alloc] initWithFrame:CGRectInset(v1.bounds, 10, 10)];
    v2.backgroundColor = [UIColor colorWithRed:1 green:.4 blue:1 alpha:1];
    [mainView addSubview:v1];
    [v1 addSubview:v2];
    
    // here is our tranform
    //v1.transform = CGAffineTransformMakeRotation(45 * M_PI/180.0);
    
    // let's try this instead:
    //v1.transform = CGAffineTransformMakeScale(1.8, 1);
    
    // and now this, two successive transforms to the subview, leaving the superview to show where the subview was originally:
    //v2.transform = CGAffineTransformMakeTranslation(100, 0);
    //v2.transform = CGAffineTransformRotate(v2.transform, 45 * M_PI/180.0);
    
    // or we could rotate and THEN translate:
    //v2.transform = CGAffineTransformMakeRotation(45 * M_PI/180.0);
    //v2.transform = CGAffineTransformTranslate(v2.transform, 100, 0);
    
    // let's do a "skew" (shear):
    v1.transform = CGAffineTransformMake(1, 0, -0.2, 1, 0, 0);
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
