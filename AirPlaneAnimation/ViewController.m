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

@interface ViewController () <AirPlaneStrokeDelegate>
{
    AirPlaneStrokeView *_airPlaneStrokeView;
}

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
    
    TopBarGradientView *topBarGradientView = [[TopBarGradientView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 90)];
    topBarGradientView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:topBarGradientView];
    
    _airPlaneStrokeView = [[AirPlaneStrokeView alloc] initWithWidth:WIDTH];
    _airPlaneStrokeView.delegate = self;
    _airPlaneStrokeView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_airPlaneStrokeView];
    
    [_airPlaneStrokeView BearSetCenterToParentViewWithAxis:kAXIS_X_Y];
}

- (void)airPlaneStrokeScaleAniamte
{
    NSLog(@"frame1:%@", NSStringFromCGRect(_airPlaneStrokeView.frame));
    [UIView animateWithDuration:2.0 animations:^{
        _airPlaneStrokeView.transform = CGAffineTransformScale(_airPlaneStrokeView.transform, 2.0, 2.0);
    } completion:^(BOOL finished) {
        
        NSLog(@"frame2:%@", NSStringFromCGRect(_airPlaneStrokeView.frame));
        [UIView animateWithDuration:3.0 animations:^{
            _airPlaneStrokeView.transform = CGAffineTransformScale(_airPlaneStrokeView.transform, 3.0, 3.0);
        } completion:^(BOOL finished) {
            
            NSLog(@"frame3:%@", NSStringFromCGRect(_airPlaneStrokeView.frame));
            nil;
        }];
    }];
}

#pragma mark - AirPlaneStrokeDelegate
- (void)strokeAnimationFinished
{
    NSLog(@"--airPlaneStrokeScaleAniamte");
    [self airPlaneStrokeScaleAniamte];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
