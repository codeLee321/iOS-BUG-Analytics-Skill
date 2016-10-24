//
//  UIViewController+Log.m
//  UseRunTimeLogVC
//
//  Created by tony on 16/10/22.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "UIViewController+Log.h"
#import <objc/runtime.h>
@implementation UIViewController (Log)
+(void)load{
    

#ifdef DEBUG
    //原本的viewWillAppear方法
    Method viewWillAppear = class_getInstanceMethod(self, @selector(viewWillAppear:));
    //需要替换成 能够输出日志的viewWillAppear
    Method logViewWillAppear = class_getInstanceMethod(self, @selector(logViewWillAppear:));
    //两方法进行交换
    method_exchangeImplementations(viewWillAppear, logViewWillAppear);

#endif
    
    
}
- (void)logViewWillAppear:(BOOL)animated {
    
    NSString *className = NSStringFromClass([self class]);
    
    //在这里，你可以进行过滤操作，指定哪些viewController需要打印，哪些不需要打印
    if ([className hasPrefix:@"UI"] == NO) {
        NSLog(@"%@ will appear",className);
    }
    
    
    //下面方法的调用，其实是调用viewWillAppear
    [self logViewWillAppear:animated];
}
@end
