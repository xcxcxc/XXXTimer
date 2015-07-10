//
//  XXXTimer.h
//  XXXTimer
//
//  Created by xc on 15/7/8.
//  Copyright (c) 2015年 ooo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XXXTimer : NSObject


+ (XXXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)(NSTimeInterval time))block repeats:(BOOL)repeats;


+ (XXXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)(NSTimeInterval time))block repeats:(BOOL)repeats loopCommonModes:(BOOL)loopCommonModes;


- (void)invalidate;

@end
