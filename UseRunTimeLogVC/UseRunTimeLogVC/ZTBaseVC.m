//
//  ZTBaseVC.m
//  UseRunTimeLogVC
//
//  Created by tony on 16/10/22.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "ZTBaseVC.h"

@interface ZTBaseVC ()

@end

@implementation ZTBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    NSString * className = NSStringFromClass([self class]);
    NSLog(@"%@ will appear",className);

}
@end
