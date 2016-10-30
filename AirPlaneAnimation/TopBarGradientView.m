//
//  TopBarGradientView.m
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "TopBarGradientView.h"

@interface TopBarGradientView ()
{
    UILabel *_titleLabel;
}

@end

@implementation TopBarGradientView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self createUI];
    }
    
    return self;
}

- (void)createUI
{
    _titleLabel = [UILabel new];
    _titleLabel.text = @"ZOOM TO SELECT SEAT";
    _titleLabel.font = [UIFont fontWithName:@"Helvetica-Light" size:16];
    _titleLabel.textColor = UIColorFromHEX(0xD8D8D8);
    [_titleLabel sizeToFit];
    [self addSubview:_titleLabel];
    
    [_titleLabel BearSetCenterToParentViewWithAxis:kAXIS_X_Y];
}

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
    
    
    CGFloat halfWidth = self.width / 2.0;
    //// bar Drawing
    UIBezierPath* barPath = [UIBezierPath bezierPathWithRect: self.bounds];
    CGContextSaveGState(context);
    [barPath addClip];
    CGContextDrawLinearGradient(context, linearGradient1,
                                CGPointMake(halfWidth, 0),
                                CGPointMake(halfWidth, self.height),
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    
    //// Cleanup
    CGGradientRelease(linearGradient1);
    CGColorSpaceRelease(colorSpace);

}

@end
