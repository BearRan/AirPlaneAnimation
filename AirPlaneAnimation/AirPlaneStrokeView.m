//
//  AirPlaneStrokeView.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "AirPlaneStrokeView.h"
#import "BearBezierPath.h"

static NSString *__kAirPlaneStrokeLeftAnimation = @"__kAirPlaneStrokeLeftAnimation";
static NSString *__kAirPlaneStrokeRightAnimation = @"__kAirPlaneStrokeRightAnimation";

@interface AirPlaneStrokeView () <CAAnimationDelegate>
{
    CAShapeLayer *_airPlaneLeftShapeLayer;
    CAShapeLayer *_airPlaneRightShapeLayer;
    
    CGFloat _animationDuring;
    CGFloat _airPlaneOriginPathWidth;
    CGFloat _airPlaneOriginPathHeight;
    CGFloat _bezierPathScaleRatio;
}

@end

@implementation AirPlaneStrokeView

- (instancetype)initWithWidth:(CGFloat)width
{
    self = [super init];
    
    if (self) {
        
        _animationDuring            = 3.6;
        _airPlaneOriginPathWidth    = 272.75 * 2;
        _airPlaneOriginPathHeight   = 500;
        _bezierPathScaleRatio       = 1.0 * width / _airPlaneOriginPathWidth;
        
        [self BearSetSizeRemainWHRatio_referWidth:[NSNumber numberWithFloat:_airPlaneOriginPathWidth]
                                      referHeight:[NSNumber numberWithFloat:_airPlaneOriginPathHeight]
                                          setSort:kSetNeed_Width
                                         setValue:[NSNumber numberWithFloat:width]];
        
        _airPlaneLeftShapeLayer = [CAShapeLayer layer];
        _airPlaneLeftShapeLayer.fillColor = [UIColor clearColor].CGColor;
        _airPlaneLeftShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
        _airPlaneLeftShapeLayer.lineWidth = 1.0;
        _airPlaneLeftShapeLayer.path = [self airPlaneLeftPath];
        [self.layer addSublayer:_airPlaneLeftShapeLayer];
        
        _airPlaneRightShapeLayer = [CAShapeLayer layer];
        _airPlaneRightShapeLayer.fillColor = [UIColor clearColor].CGColor;
        _airPlaneRightShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
        _airPlaneRightShapeLayer.lineWidth = 1.0;
        _airPlaneRightShapeLayer.path = [self airPlaneRightPath];
        [self.layer addSublayer:_airPlaneRightShapeLayer];
        
        [self showAirPlaneLeftLayerAniamtion];
        [self showAirPlaneRightLayerAniamtion];
    }
    
    return self;
}


#pragma mark - ShowAnimation
- (void)showAirPlaneLeftLayerAniamtion
{
    CABasicAnimation *strokeEnd = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
    strokeEnd.delegate = self;
    strokeEnd.fromValue = [NSNumber numberWithFloat:0];
    strokeEnd.toValue = [NSNumber numberWithFloat:1];
    strokeEnd.duration = _animationDuring;
    [_airPlaneLeftShapeLayer addAnimation:strokeEnd forKey:__kAirPlaneStrokeLeftAnimation];
}

- (void)showAirPlaneRightLayerAniamtion
{
    CABasicAnimation *strokeEnd = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
//    strokeEnd.delegate = self;
    strokeEnd.fromValue = [NSNumber numberWithFloat:0];
    strokeEnd.toValue = [NSNumber numberWithFloat:1];
    strokeEnd.duration = _animationDuring;
    [_airPlaneRightShapeLayer addAnimation:strokeEnd forKey:__kAirPlaneStrokeRightAnimation];
}


#pragma mark - Animation Delegate

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if ([_delegate respondsToSelector:@selector(strokeAnimationFinished)]) {
        [_delegate strokeAnimationFinished];
    }
    
//    if ([_airPlaneLeftShapeLayer animationForKey:__kAirPlaneStrokeLeftAnimation] == anim) {
//        
//        NSLog(@"__kAirPlaneStrokeLeftAnimation");
//        if ([_delegate respondsToSelector:@selector(strokeAnimationFinished)]) {
//            [_delegate strokeAnimationFinished];
//        }
//    }else if ([_airPlaneRightShapeLayer animationForKey:__kAirPlaneStrokeRightAnimation] == anim) {
//        
//        NSLog(@"--__kAirPlaneStrokeRightAnimation");
//    }
}


#pragma mark - AirPlane Path
- (CGPathRef)airPlaneLeftPath
{
    BearBezierPath* pathPath = BearBezierPath.bezierPath;
    pathPath.scaleRatio = _bezierPathScaleRatio;
    [pathPath moveToPoint: CGPointMake(273.96, 1)];
    [pathPath addCurveToPoint: CGPointMake(246.71, 64.93) controlPoint1: CGPointMake(265.76, 1) controlPoint2: CGPointMake(246.71, 41.78)];
    [pathPath addLineToPoint: CGPointMake(246.71, 176.03)];
    [pathPath addCurveToPoint: CGPointMake(15.16, 309.13) controlPoint1: CGPointMake(246.71, 176.03) controlPoint2: CGPointMake(29.71, 301.15)];
    [pathPath addCurveToPoint: CGPointMake(1.54, 332.19) controlPoint1: CGPointMake(0.61, 317.11) controlPoint2: CGPointMake(0.74, 328.97)];
    [pathPath addCurveToPoint: CGPointMake(21.11, 330.51) controlPoint1: CGPointMake(2.51, 336.11) controlPoint2: CGPointMake(12.47, 332.67)];
    [pathPath addCurveToPoint: CGPointMake(134.77, 301.37) controlPoint1: CGPointMake(48.05, 323.72) controlPoint2: CGPointMake(94.61, 311.73)];
    [pathPath addCurveToPoint: CGPointMake(136.71, 310.19) controlPoint1: CGPointMake(135.12, 306.57) controlPoint2: CGPointMake(135.87, 310.19)];
    [pathPath addCurveToPoint: CGPointMake(138.69, 300.36) controlPoint1: CGPointMake(137.64, 310.19) controlPoint2: CGPointMake(138.43, 306.09)];
    [pathPath addCurveToPoint: CGPointMake(210.07, 281.88) controlPoint1: CGPointMake(177.93, 290.22) controlPoint2: CGPointMake(210.07, 281.88)];
    [pathPath addLineToPoint: CGPointMake(217.48, 281.88)];
    [pathPath addCurveToPoint: CGPointMake(219.55, 295.51) controlPoint1: CGPointMake(217.52, 289.51) controlPoint2: CGPointMake(218.45, 295.51)];
    [pathPath addCurveToPoint: CGPointMake(221.62, 281.88) controlPoint1: CGPointMake(220.65, 295.51) controlPoint2: CGPointMake(221.54, 289.51)];
    [pathPath addLineToPoint: CGPointMake(246.75, 281.88)];
    [pathPath addLineToPoint: CGPointMake(246.75, 362.61)];
    [pathPath addCurveToPoint: CGPointMake(253.06, 428.65) controlPoint1: CGPointMake(246.75, 378.92) controlPoint2: CGPointMake(253.06, 428.65)];
    [pathPath addCurveToPoint: CGPointMake(189.53, 470.54) controlPoint1: CGPointMake(252.93, 428.65) controlPoint2: CGPointMake(194.02, 466.52)];
    [pathPath addCurveToPoint: CGPointMake(180.75, 494.7) controlPoint1: CGPointMake(184.68, 474.86) controlPoint2: CGPointMake(179.34, 489.67)];
    [pathPath addCurveToPoint: CGPointMake(193.1, 494.96) controlPoint1: CGPointMake(181.64, 497.91) controlPoint2: CGPointMake(186.27, 496.72)];
    [pathPath addCurveToPoint: CGPointMake(263.51, 476.88) controlPoint1: CGPointMake(215.54, 489.18) controlPoint2: CGPointMake(263.51, 476.88)];
    [pathPath addCurveToPoint: CGPointMake(271.97, 490.24) controlPoint1: CGPointMake(263.51, 476.88) controlPoint2: CGPointMake(268.36, 488.3)];
    [pathPath addCurveToPoint: CGPointMake(274, 501) controlPoint1: CGPointMake(272.24, 496.46) controlPoint2: CGPointMake(273.03, 501)];
    
    return pathPath.CGPath;
}

- (CGPathRef)airPlaneRightPath
{
    BearBezierPath* pathPath = BearBezierPath.bezierPath;
    pathPath.scaleRatio = _bezierPathScaleRatio;
    pathPath.offSetPoint = CGPointMake(274 * pathPath.scaleRatio, 0);
    
    [pathPath moveToPoint: CGPointMake(0.3, 1)];
    [pathPath addCurveToPoint: CGPointMake(27.54, 64.93) controlPoint1: CGPointMake(8.5, 1) controlPoint2: CGPointMake(27.54, 41.78)];
    [pathPath addLineToPoint: CGPointMake(27.54, 176.03)];
    [pathPath addCurveToPoint: CGPointMake(259.09, 309.13) controlPoint1: CGPointMake(27.54, 176.03) controlPoint2: CGPointMake(244.54, 301.15)];
    [pathPath addCurveToPoint: CGPointMake(272.72, 332.19) controlPoint1: CGPointMake(273.64, 317.11) controlPoint2: CGPointMake(273.51, 328.97)];
    [pathPath addCurveToPoint: CGPointMake(253.14, 330.51) controlPoint1: CGPointMake(271.75, 336.11) controlPoint2: CGPointMake(261.78, 332.67)];
    [pathPath addCurveToPoint: CGPointMake(139.48, 301.37) controlPoint1: CGPointMake(226.2, 323.72) controlPoint2: CGPointMake(179.65, 311.73)];
    [pathPath addCurveToPoint: CGPointMake(137.54, 310.19) controlPoint1: CGPointMake(139.13, 306.57) controlPoint2: CGPointMake(138.38, 310.19)];
    [pathPath addCurveToPoint: CGPointMake(135.56, 300.36) controlPoint1: CGPointMake(136.62, 310.19) controlPoint2: CGPointMake(135.82, 306.09)];
    [pathPath addCurveToPoint: CGPointMake(64.18, 281.88) controlPoint1: CGPointMake(96.32, 290.22) controlPoint2: CGPointMake(64.18, 281.88)];
    [pathPath addLineToPoint: CGPointMake(56.77, 281.88)];
    [pathPath addCurveToPoint: CGPointMake(54.7, 295.51) controlPoint1: CGPointMake(56.73, 289.51) controlPoint2: CGPointMake(55.8, 295.51)];
    [pathPath addCurveToPoint: CGPointMake(52.63, 281.88) controlPoint1: CGPointMake(53.6, 295.51) controlPoint2: CGPointMake(52.72, 289.51)];
    [pathPath addLineToPoint: CGPointMake(27.5, 281.88)];
    [pathPath addLineToPoint: CGPointMake(27.5, 362.61)];
    [pathPath addCurveToPoint: CGPointMake(21.19, 428.65) controlPoint1: CGPointMake(27.5, 378.92) controlPoint2: CGPointMake(21.19, 428.65)];
    [pathPath addCurveToPoint: CGPointMake(84.72, 470.54) controlPoint1: CGPointMake(21.33, 428.65) controlPoint2: CGPointMake(80.23, 466.52)];
    [pathPath addCurveToPoint: CGPointMake(93.5, 494.7) controlPoint1: CGPointMake(89.57, 474.86) controlPoint2: CGPointMake(94.91, 489.67)];
    [pathPath addCurveToPoint: CGPointMake(81.15, 494.96) controlPoint1: CGPointMake(92.62, 497.91) controlPoint2: CGPointMake(87.99, 496.72)];
    [pathPath addCurveToPoint: CGPointMake(10.75, 476.88) controlPoint1: CGPointMake(58.71, 489.18) controlPoint2: CGPointMake(10.75, 476.88)];
    [pathPath addCurveToPoint: CGPointMake(2.28, 490.24) controlPoint1: CGPointMake(10.75, 476.88) controlPoint2: CGPointMake(5.9, 488.3)];
    [pathPath addCurveToPoint: CGPointMake(0.25, 501) controlPoint1: CGPointMake(2.02, 496.46) controlPoint2: CGPointMake(1.22, 501)];
    
    
    return pathPath.CGPath;
}

@end
