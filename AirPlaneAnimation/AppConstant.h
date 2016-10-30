//
//  AppConstant.h
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import <Foundation/Foundation.h>

CG_INLINE CGPoint
CGPointMakeBaseIn6(CGFloat x, CGFloat y)
{
    CGPoint p;
    p.x = x * 1.0 * WIDTH6 / WIDTH;
    p.y = y * 1.0 * HEIGHT6 / HEIGHT;
    return p;
}

CG_INLINE CGRect
CGRectMakeBaseIn6(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    CGRect rect;
    rect.origin.x = x * 1.0  * WIDTH6 / WIDTH;
    rect.origin.y = y * 1.0  * HEIGHT6 / HEIGHT;
    rect.size.width = width * 1.0  * WIDTH6 / WIDTH;
    rect.size.height = height * 1.0  * HEIGHT6 / HEIGHT;
    return rect;
}

@interface AppConstant : NSObject

@end
