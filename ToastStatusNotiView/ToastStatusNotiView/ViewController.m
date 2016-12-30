//
//  ViewController.m
//  ToastStatusNotiView
//
//  Created by 左博杨 on 2016/12/30.
//  Copyright © 2016年 左博杨. All rights reserved.
//

#import "ViewController.h"
#import "StatusNotiView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *sucessBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, 400, 100, 100)];
    [sucessBtn setTitle:@"成功" forState:UIControlStateNormal];
    sucessBtn.backgroundColor = [UIColor blueColor];
    [sucessBtn addTarget:self action:@selector(successNoti) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sucessBtn];
}

-(void)successNoti{
    [StatusNotiView showWithType:NSNotiTypeSuccessDelete];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
