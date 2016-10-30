//
//  ViewController.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "ViewController.h"
#import "AirPlaneStrokeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
}

- (void)createUI
{
    AirPlaneStrokeView *airPlaneStrokeView = [[AirPlaneStrokeView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    airPlaneStrokeView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:airPlaneStrokeView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
