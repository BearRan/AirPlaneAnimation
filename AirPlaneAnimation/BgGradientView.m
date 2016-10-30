//
//  BgGradientView.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "BgGradientView.h"

@implementation BgGradientView

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
    UIColor* gradientColor = [UIColor colorWithRed: 0.647 green: 0.506 blue: 1 alpha: 1];
    UIColor* gradientColor2 = [UIColor colorWithRed: 0.647 green: 0.506 blue: 1 alpha: 0];
    UIColor* gradientColor3 = [UIColor colorWithRed: 0.337 green: 0.804 blue: 1 alpha: 1];
    UIColor* gradientColor4 = [UIColor colorWithRed: 0.486 green: 0.314 blue: 0.98 alpha: 1];
    
    //// Gradient Declarations
    CGFloat radialGradient4Locations[] = {0, 1};
    CGGradientRef radialGradient4 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)gradientColor.CGColor, (id)gradientColor2.CGColor], radialGradient4Locations);
    CGFloat linearGradient1Locations[] = {0, 1};
    CGGradientRef linearGradient1 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)gradientColor3.CGColor, (id)gradientColor4.CGColor], linearGradient1Locations);
    
    //// path-2 Drawing
    UIBezierPath* path2Path = [UIBezierPath bezierPathWithRect: CGRectMake(-4, -16, 760.46, 1349)];
    CGContextSaveGState(context);
    [path2Path addClip];
    CGContextDrawLinearGradient(context, linearGradient1,
                                CGPointMake(557.27, -16),
                                CGPointMake(63.01, 1333),
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    
    
    //// Oval 2 Drawing
    CGFloat ovalX = -636;
    CGFloat ovalY = 172;
    CGFloat ovalWidth = 1142.25;
    CGFloat ovalHeight = 1142.25;
    CGFloat ovalWidthHalf = ovalWidth / 2.0;
    CGFloat ovalHeightHalf = ovalHeight / 2.0;
    
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(ovalX, ovalY, ovalWidth, ovalHeight)];
    CGContextSaveGState(context);
    [oval2Path addClip];
    CGContextDrawRadialGradient(context, radialGradient4,
                                CGPointMake(ovalX + ovalWidthHalf, ovalY + ovalHeightHalf), 0,
                                CGPointMake(ovalX + ovalWidthHalf, ovalY + ovalHeightHalf), ovalWidthHalf,
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    
    //// Cleanup
    CGGradientRelease(radialGradient4);
    CGGradientRelease(linearGradient1);
    CGColorSpaceRelease(colorSpace);

}

@end
