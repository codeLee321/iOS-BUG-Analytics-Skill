//
//  FirstVC.m
//  UseRunTimeLogVC
//
//  Created by tony on 16/10/22.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "FirstVC.h"
#import "SecondVC.h"
@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    [self.navigationController pushViewController:[SecondVC new] animated:YES];
    
}

@end
