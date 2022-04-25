//
//  ZooManager+Logger.m
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import "ZooManager+Logger.h"
#import "ZooCacheManager+Logger.h"

#import <Zoo/Zooi18NUtil.h>

#import "ZooCocoaLumberjackLogger.h"
#import "ZooCocoaLumberjackViewController.h"
#import "ZooCocoaLumberjackListViewController.h"

@implementation ZooManager (Logger)

#pragma mark - Logger
- (void)addLoggerPlugins {
    [self addPluginWithModel: [self appLoggerPluginModel]];
}

- (void)setupLoggerPlugins {
    if ([[ZooCacheManager sharedInstance] loggerSwitch]) {
        [[ZooCocoaLumberjackLogger sharedInstance] startMonitor];
    }
}

#pragma mark - Model

- (ZooManagerPluginTypeModel *)appLoggerPluginModel {
    ZooManagerPluginTypeModel *model = [ZooManagerPluginTypeModel new];
    model.title = ZooLocalizedString(@"Lumberjack");
    model.desc = ZooLocalizedString(@"Lumberjack");
    model.icon = @"zoo_log";
    model.pluginName = @"ZooCocoaLumberjackPlugin";
    model.atModule = ZooLocalizedString(@"General");
    return model;
}

@end
