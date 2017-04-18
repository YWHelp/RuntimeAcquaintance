
#import "TestClass+SwapMethod.h"
#import "RuntimeKit.h"
@implementation TestClass (SwapMethod)

- (void)swapMethod {
    [RuntimeKit methodSwap:[self class]
               firstMethod:@selector(method1)
              secondMethod:@selector(method2)];
}

- (void)method2 {
    //下方调用的实际上是method1的实现
    [self method2];
    NSLog(@"可以在Method1的基础上添加各种东西了");
}

@end
