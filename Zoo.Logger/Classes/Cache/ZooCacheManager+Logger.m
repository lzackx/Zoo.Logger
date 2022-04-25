//
//  ZooCacheManager.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooCacheManager+Logger.h"
#import <Zoo/ZooManager.h>
#import <Zoo/ZooDefine.h>


static NSString * const kZooLoggerSwitchKey = @"zoo_env_key";

@implementation ZooCacheManager (Logger)

- (void)saveLoggerSwitch:(BOOL)on{
    [[NSUserDefaults standardUserDefaults] setBool:on forKey:kZooLoggerSwitchKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (BOOL)loggerSwitch{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kZooLoggerSwitchKey];
}

@end
