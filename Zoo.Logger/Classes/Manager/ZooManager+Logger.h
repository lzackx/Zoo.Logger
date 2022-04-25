//
//  ZooManager+Logger.h
//  Zoo
//
//  Created by lZackx on 2022/4/14.

#import <Zoo/ZooManager.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZooManager (Logger)

// MARK: - Logger
- (void)addLoggerPlugins;

- (void)setupLoggerPlugins;

@end

NS_ASSUME_NONNULL_END
