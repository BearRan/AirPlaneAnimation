//
//  AirPlaneStrokeView.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "AirPlaneStrokeView.h"

@interface AirPlaneStrokeView ()
{
    CAShapeLayer *_airPlaneLeftShapeLayer;
    CAShapeLayer *_airPlaneRightShapeLayer;
}

@end

@implementation AirPlaneStrokeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
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
    }
    
    return self;
}

- (CGPathRef)airPlaneLeftPath
{
    UIBezierPath* pathPath = UIBezierPath.bezierPath;
    [pathPath moveToPoint: CGPointMake(274, 501)];
    [pathPath addCurveToPoint: CGPointMake(271.97, 490.24) controlPoint1: CGPointMake(273.03, 501) controlPoint2: CGPointMake(272.24, 496.46)];
    [pathPath addCurveToPoint: CGPointMake(263.51, 476.88) controlPoint1: CGPointMake(268.36, 488.3) controlPoint2: CGPointMake(263.51, 476.88)];
    [pathPath addCurveToPoint: CGPointMake(193.1, 494.96) controlPoint1: CGPointMake(263.51, 476.88) controlPoint2: CGPointMake(215.54, 489.18)];
    [pathPath addCurveToPoint: CGPointMake(180.75, 494.7) controlPoint1: CGPointMake(186.27, 496.72) controlPoint2: CGPointMake(181.64, 497.91)];
    [pathPath addCurveToPoint: CGPointMake(189.53, 470.54) controlPoint1: CGPointMake(179.34, 489.67) controlPoint2: CGPointMake(184.68, 474.86)];
    [pathPath addCurveToPoint: CGPointMake(253.06, 428.65) controlPoint1: CGPointMake(194.02, 466.52) controlPoint2: CGPointMake(252.93, 428.65)];
    [pathPath addCurveToPoint: CGPointMake(246.75, 362.61) controlPoint1: CGPointMake(253.06, 428.65) controlPoint2: CGPointMake(246.75, 378.92)];
    [pathPath addLineToPoint: CGPointMake(246.75, 281.88)];
    [pathPath addLineToPoint: CGPointMake(221.62, 281.88)];
    [pathPath addCurveToPoint: CGPointMake(219.55, 295.51) controlPoint1: CGPointMake(221.54, 289.51) controlPoint2: CGPointMake(220.65, 295.51)];
    [pathPath addCurveToPoint: CGPointMake(217.48, 281.88) controlPoint1: CGPointMake(218.45, 295.51) controlPoint2: CGPointMake(217.52, 289.51)];
    [pathPath addLineToPoint: CGPointMake(210.07, 281.88)];
    [pathPath addCurveToPoint: CGPointMake(138.69, 300.36) controlPoint1: CGPointMake(210.07, 281.88) controlPoint2: CGPointMake(177.93, 290.22)];
    [pathPath addCurveToPoint: CGPointMake(136.71, 310.19) controlPoint1: CGPointMake(138.43, 306.09) controlPoint2: CGPointMake(137.64, 310.19)];
    [pathPath addCurveToPoint: CGPointMake(134.77, 301.37) controlPoint1: CGPointMake(135.87, 310.19) controlPoint2: CGPointMake(135.12, 306.57)];
    [pathPath addCurveToPoint: CGPointMake(21.11, 330.51) controlPoint1: CGPointMake(94.61, 311.73) controlPoint2: CGPointMake(48.05, 323.72)];
    [pathPath addCurveToPoint: CGPointMake(1.54, 332.19) controlPoint1: CGPointMake(12.47, 332.67) controlPoint2: CGPointMake(2.51, 336.11)];
    [pathPath addCurveToPoint: CGPointMake(15.16, 309.13) controlPoint1: CGPointMake(0.74, 328.97) controlPoint2: CGPointMake(0.61, 317.11)];
    [pathPath addCurveToPoint: CGPointMake(246.71, 176.03) controlPoint1: CGPointMake(29.71, 301.15) controlPoint2: CGPointMake(246.71, 176.03)];
    [pathPath addLineToPoint: CGPointMake(246.71, 64.93)];
    [pathPath addCurveToPoint: CGPointMake(273.96, 1) controlPoint1: CGPointMake(246.71, 41.78) controlPoint2: CGPointMake(265.76, 1)];
    
    return pathPath.CGPath;
}

- (CGPathRef)airPlaneRightPath
{
    UIBezierPath* pathPath = UIBezierPath.bezierPath;
    [pathPath moveToPoint: CGPointMake(1.25, 501)];
    [pathPath addCurveToPoint: CGPointMake(3.28, 490.24) controlPoint1: CGPointMake(2.22, 501) controlPoint2: CGPointMake(3.02, 496.46)];
    [pathPath addCurveToPoint: CGPointMake(11.75, 476.88) controlPoint1: CGPointMake(6.9, 488.3) controlPoint2: CGPointMake(11.75, 476.88)];
    [pathPath addCurveToPoint: CGPointMake(82.15, 494.96) controlPoint1: CGPointMake(11.75, 476.88) controlPoint2: CGPointMake(59.71, 489.18)];
    [pathPath addCurveToPoint: CGPointMake(94.5, 494.7) controlPoint1: CGPointMake(88.99, 496.72) controlPoint2: CGPointMake(93.62, 497.91)];
    [pathPath addCurveToPoint: CGPointMake(85.72, 470.54) controlPoint1: CGPointMake(95.91, 489.67) controlPoint2: CGPointMake(90.57, 474.86)];
    [pathPath addCurveToPoint: CGPointMake(22.19, 428.65) controlPoint1: CGPointMake(81.23, 466.52) controlPoint2: CGPointMake(22.33, 428.65)];
    [pathPath addCurveToPoint: CGPointMake(28.5, 362.61) controlPoint1: CGPointMake(22.19, 428.65) controlPoint2: CGPointMake(28.5, 378.92)];
    [pathPath addLineToPoint: CGPointMake(28.5, 281.88)];
    [pathPath addLineToPoint: CGPointMake(53.63, 281.88)];
    [pathPath addCurveToPoint: CGPointMake(55.7, 295.51) controlPoint1: CGPointMake(53.72, 289.51) controlPoint2: CGPointMake(54.6, 295.51)];
    [pathPath addCurveToPoint: CGPointMake(57.77, 281.88) controlPoint1: CGPointMake(56.8, 295.51) controlPoint2: CGPointMake(57.73, 289.51)];
    [pathPath addLineToPoint: CGPointMake(65.18, 281.88)];
    [pathPath addCurveToPoint: CGPointMake(136.56, 300.36) controlPoint1: CGPointMake(65.18, 281.88) controlPoint2: CGPointMake(97.32, 290.22)];
    [pathPath addCurveToPoint: CGPointMake(138.54, 310.19) controlPoint1: CGPointMake(136.82, 306.09) controlPoint2: CGPointMake(137.62, 310.19)];
    [pathPath addCurveToPoint: CGPointMake(140.48, 301.37) controlPoint1: CGPointMake(139.38, 310.19) controlPoint2: CGPointMake(140.13, 306.57)];
    [pathPath addCurveToPoint: CGPointMake(254.14, 330.51) controlPoint1: CGPointMake(180.65, 311.73) controlPoint2: CGPointMake(227.2, 323.72)];
    [pathPath addCurveToPoint: CGPointMake(273.72, 332.19) controlPoint1: CGPointMake(262.78, 332.67) controlPoint2: CGPointMake(272.75, 336.11)];
    [pathPath addCurveToPoint: CGPointMake(260.09, 309.13) controlPoint1: CGPointMake(274.51, 328.97) controlPoint2: CGPointMake(274.64, 317.11)];
    [pathPath addCurveToPoint: CGPointMake(28.54, 176.03) controlPoint1: CGPointMake(245.54, 301.15) controlPoint2: CGPointMake(28.54, 176.03)];
    [pathPath addLineToPoint: CGPointMake(28.54, 64.93)];
    [pathPath addCurveToPoint: CGPointMake(1.3, 1) controlPoint1: CGPointMake(28.54, 41.78) controlPoint2: CGPointMake(9.5, 1)];
    
    
    return pathPath.CGPath;
}

@end
