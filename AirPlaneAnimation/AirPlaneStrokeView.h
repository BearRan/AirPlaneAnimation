//
//  AirPlaneStrokeView.h
//  AirPlaneAnimation
//
//  Created by apple on 16/10/30.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AirPlaneStrokeDelegate <NSObject>

- (void)strokeAnimationFinished;

@end

@interface AirPlaneStrokeView : UIView

@property (weak, nonatomic) id<AirPlaneStrokeDelegate> delegate;

- (instancetype)initWithWidth:(CGFloat)width;

@end
