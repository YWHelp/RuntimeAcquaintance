//
//  Student.m
//  Runtime
//
//  Created by changcai on 17/4/11.
//  Copyright © 2017年 changcai. All rights reserved.
//

#import "Student.h"
#import "Persion.h"

@implementation Student

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    return [Persion new];
}

- (NSMethodSignature *) methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *methodSignature = [super methodSignatureForSelector:aSelector];
    if(methodSignature == nil){
        methodSignature = [NSMethodSignature signatureWithObjCTypes:"@@:"];
    }
    return methodSignature;
}





@end
