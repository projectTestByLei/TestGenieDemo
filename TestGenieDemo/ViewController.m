//
//  ViewController.m
//  TestGenieDemo
//
//  Created by leihuiwu on 15/5/13.
//  Copyright (c) 2015年 leihuiwu. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Genie.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     
     提交测试
     
    */
}

- (IBAction)actionTouch:(id)sender {
    CGFloat centerY = CGRectGetMidY(_destinationLabel.frame);
    CGFloat centerX = CGRectGetMidX(_destinationLabel.frame);
    CGRect endRect = CGRectMake(centerX - 5, centerY - 5, 10, 10);
    [_imageV genieInTransitionWithDuration:2.0f destinationRect:endRect destinationEdge:BCRectEdgeBottom completion:^{
        NSLog(@"动画完成!");
        [_imageV removeFromSuperview];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
