//
//  XXXWeakProxy.m
//  XXXTimer
//
//  Created by xc on 15/7/9.
//  Copyright (c) 2015年 xxx. All rights reserved.
//

#import "XXXWeakProxy.h"

@implementation XXXWeakProxy

+ (instancetype)weakProxyForObject:(id)targetObject
{
	XXXWeakProxy *weakProxy = [XXXWeakProxy alloc];
	weakProxy.target = targetObject;
	return weakProxy;
}


- (id)forwardingTargetForSelector:(SEL)selector
{
	return _target;
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
	void *nullPointer = NULL;
	[invocation setReturnValue:&nullPointer];
}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector
{
	return [NSObject instanceMethodSignatureForSelector:@selector(init)];
}


- (void)dealloc {
	
}

@end
