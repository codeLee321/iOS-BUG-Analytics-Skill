//
//  ViewController.m
//  UseRunTimeLogVC
//
//  Created by tony on 16/10/22.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "ViewController.h"
#import "FirstVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CATransition * anim = [CATransition animation];
    anim.duration = 1;
    anim.type= @"suckEffect";//cameraIrisHollowOpen  cameraIrisHollowClose
    //    anim.type= kCATransitionReveal; //另一种方式
    anim.subtype = kCATransitionFromRight;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    [self.navigationController.view.layer addAnimation:anim forKey:nil];
    self.title = NSStringFromClass([self class]);
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{


    [self.navigationController pushViewController:[FirstVC new]animated:YES];

}
@end
