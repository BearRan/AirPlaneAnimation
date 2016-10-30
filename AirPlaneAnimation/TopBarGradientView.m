//
//  TopBarGradientView.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "TopBarGradientView.h"

@implementation TopBarGradientView

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    [self drawGradient];
}

- (void)drawGradient
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* gradientColor = [UIColor colorWithRed: 0.337 green: 0.8 blue: 1 alpha: 1];
    UIColor* gradientColor2 = [UIColor colorWithRed: 0.337 green: 0.8 blue: 1 alpha: 0];
    
    //// Gradient Declarations
    CGFloat linearGradient1Locations[] = {0, 1};
    CGGradientRef linearGradient1 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)gradientColor.CGColor, (id)gradientColor2.CGColor], linearGradient1Locations);
    
    //// bar Drawing
    UIBezierPath* barPath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 750, 180)];
    CGContextSaveGState(context);
    [barPath addClip];
    CGContextDrawLinearGradient(context, linearGradient1,
                                CGPointMake(375, 0),
                                CGPointMake(375, 180),
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    //// Cleanup
    CGGradientRelease(linearGradient1);
    CGColorSpaceRelease(colorSpace);

}

@end
