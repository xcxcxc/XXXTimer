//
//  XXXTimer.m
//  XXXTimer
//
//  Created by xc on 15/7/8.
//  Copyright (c) 2015年 ooo. All rights reserved.
//

#import "XXXTimer.h"
#import "XXXWeakProxy.h"


@interface XXXTimer ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) XXXWeakProxy *weakProxy;


@end


@implementation XXXTimer

- (instancetype)initWithTimeInterval:(NSTimeInterval)interval block:(void(^)(NSTimeInterval time))block repeats:(BOOL)repeats loopCommonModes:(BOOL)loopCommonModes {
	
	if (self = [super init]) {
		
		self.weakProxy = [XXXWeakProxy weakProxyForObject:self];
		self.timer = [NSTimer scheduledTimerWithTimeInterval:interval target:self.weakProxy selector:@selector(blockInvoke:) userInfo:[block copy] repeats:repeats];
		if (loopCommonModes) {
			[[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
		}
		
	}
	return self;
}




- (void)invalidate {
	if (self.timer) {
		[self.timer invalidate];
		self.timer = nil;
	}
}


- (void)dealloc {
	[self invalidate];
}


- (void)blockInvoke:(NSTimer *)timer {
	void (^block)() = timer.userInfo;
	if (block) {
		block([timer timeInterval]);
	}
}



#pragma mark - pubilc static function
+ (XXXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)(NSTimeInterval time))block repeats:(BOOL)repeats {
	XXXTimer *timer = [[XXXTimer alloc] initWithTimeInterval:interval block:block repeats:repeats loopCommonModes:NO];
	
	return timer;
}


+ (XXXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)(NSTimeInterval time))block repeats:(BOOL)repeats loopCommonModes:(BOOL)loopCommonModes {
	
	XXXTimer *timer = [[XXXTimer alloc] initWithTimeInterval:interval block:block repeats:repeats loopCommonModes:loopCommonModes];

	return timer;
}


@end
