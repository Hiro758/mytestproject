//
//  ViewController.m
//  mytestproject
//
//  Created by 丸山裕之 on 2015/01/12.
//  Copyright (c) 2015年 MARUYAMA, Hiroyuki. All rights reserved.
//

#import "ViewController.h"
#import "mainView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    mainView *mView = [[mainView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    [self.view addSubview:mView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
