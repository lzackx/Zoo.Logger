//
//  ZOOAppDelegate.m
//  Zoo.Logger
//
//  Created by lzackx on 04/24/2022.
//  Copyright (c) 2022 lzackx. All rights reserved.
//

#import "ZOOAppDelegate.h"
#import <Zoo/ZooManager.h>
#import <ZooGeneral/ZooManager+General.h>
#import <ZooGeneral/ZooCacheManager+General.h>
#import <ZooLogger/ZooManager+Logger.h>
#import <ZooLogger/ZooCacheManager+Logger.h>

#import <CocoaLumberjack/CocoaLumberjack.h>

#define ddLogLevel DDLogLevelVerbose

@implementation ZOOAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    [[ZooManager shareInstance] addGeneralPlugins];
    [[ZooManager shareInstance] addLoggerPlugins];
    [[ZooManager shareInstance] setupGeneralPlugins];
    [[ZooManager shareInstance] setupLoggerPlugins];
    [[ZooManager shareInstance] install];
    
    [DDLog addLogger:[DDOSLogger sharedInstance]]; // Uses os_log

    DDFileLogger *fileLogger = [[DDFileLogger alloc] init]; // File Logger
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    [DDLog addLogger:fileLogger];

    DDLogVerbose(@"Verbose");
    DDLogDebug(@"Debug");
    DDLogInfo(@"Info");
    DDLogWarn(@"Warn");
    DDLogError(@"Error");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
