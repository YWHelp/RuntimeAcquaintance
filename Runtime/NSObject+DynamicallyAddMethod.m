//
//  NSObject+DynamicallyAddMethod.m
//  Runtime
//
//  Created by changcai on 17/4/11.
//  Copyright © 2017年 changcai. All rights reserved.
//

#import "NSObject+DynamicallyAddMethod.h"
#import "Persion.h"
@implementation NSObject (DynamicallyAddMethod)

+(BOOL)resolveInstanceMethod:(SEL)sel
{
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    return [Persion new];
}
@end
