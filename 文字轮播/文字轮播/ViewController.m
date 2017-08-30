//
//  ViewController.m
//  文字轮播
//
//  Created by 周旭斌 on 2017/4/1.
//  Copyright © 2017年 周旭斌. All rights reserved.
//
/*把数据源给我,实现文字无限轮播,就是不管有多少条数据*/

#import "ViewController.h"
#import "XBTextLoopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor redColor];
    
    XBTextLoopView *loopView = [XBTextLoopView textLoopViewWith:@[@"我是跑马灯😆1", @"我是跑马灯😆2", @"我是跑马灯😆3"] loopInterval:1.0 initWithFrame:CGRectMake(100, 100, 200, 40) selectBlock:^(NSString *selectString, NSInteger index) {
        NSLog(@"%@===index%ld", selectString, index);
    }];
    [self.view addSubview:loopView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
