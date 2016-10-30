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
    AirPlaneStrokeView *airPlaneStrokeView = [[AirPlaneStrokeView alloc] initWithWidth:300];
    airPlaneStrokeView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:airPlaneStrokeView];
    
    [airPlaneStrokeView BearSetCenterToParentViewWithAxis:kAXIS_X_Y];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
