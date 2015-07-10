//
//  ViewController2.m
//  XXXTimer
//
//  Created by xc on 15/7/8.
//  Copyright (c) 2015年 ooo. All rights reserved.
//

#import "ViewController2.h"

#import "XXXTimer.h"


@interface ViewController2 ()


@property (nonatomic, strong) NSTimer *timer;

@property (nonatomic, strong) XXXTimer *xxxTimer;

@end


@implementation ViewController2



- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.navigationItem.title = @"test2";
	
	self.view.backgroundColor = [UIColor yellowColor];

	NSLog(@"%ld", CFGetRetainCount((__bridge CFTypeRef)self));
//  ViewController2 不会释放, 而且POP了之后timer还会继续运行
//	self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(log) userInfo:nil repeats:YES];


//	__weak typeof(self) weakSelf = self;
//	self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:weakSelf selector:@selector(log) userInfo:nil repeats:YES];
	
	
//  ViewController2 会释放, 而且POP了之后timer会自动停止
	self.xxxTimer = [XXXTimer scheduledTimerWithTimeInterval:1.0 block:^(NSTimeInterval time) {
		NSLog(@"123123123");
	} repeats:YES loopCommonModes:YES];
	
	
	NSLog(@"%ld", CFGetRetainCount((__bridge CFTypeRef)self));
	
}


- (void)log {
	NSLog(@"lalalalalalalalalalalalalalalala");
}

- (void)dealloc {
	
	NSLog(@"ViewController2 dealloc");
}

@end
