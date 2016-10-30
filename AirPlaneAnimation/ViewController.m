//
//  ViewController.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "ViewController.h"
#import "AirPlaneStrokeView.h"
#import "BgGradientView.h"
#import "TopBarGradientView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
}

- (void)createUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    BgGradientView *bgGradientView = [[BgGradientView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    bgGradientView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:bgGradientView];
    
    TopBarGradientView *topBarGradientView = [[TopBarGradientView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 180)];
    topBarGradientView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:topBarGradientView];
    
    AirPlaneStrokeView *airPlaneStrokeView = [[AirPlaneStrokeView alloc] initWithWidth:WIDTH];
    airPlaneStrokeView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:airPlaneStrokeView];
    
    [airPlaneStrokeView BearSetCenterToParentViewWithAxis:kAXIS_X_Y];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
