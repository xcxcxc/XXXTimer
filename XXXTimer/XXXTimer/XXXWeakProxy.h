//
//  XXXWeakProxy.h
//  XXXTimer
//
//  Created by xc on 15/7/9.
//  Copyright (c) 2015年 xxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XXXWeakProxy : NSProxy

@property (nonatomic, weak) id target;

+ (instancetype)weakProxyForObject:(id)targetObject;

@end