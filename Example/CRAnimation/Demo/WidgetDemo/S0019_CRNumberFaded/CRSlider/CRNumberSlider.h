//
//  CRNumberSlider.h
//  CRNumberFaded
//
//  Created by Bear on 2017/5/12.
//  Copyright © 2017年 Bear. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CRNumberSlider;

@protocol CRNumberSliderDelegate <NSObject>

- (void)thumbImageVDidSlided:(CRNumberSlider *)slider;

@end

@interface CRNumberSlider : UIControl

@property (weak, nonatomic) id <CRNumberSliderDelegate> delegate;

@property(nonatomic) float value;
@property(nonatomic) float minimumValue;
@property(nonatomic) float maximumValue;

@property(nonatomic) float poleImageVOffX;
@property (strong, nonatomic) UIImageView *poleImageV;
@property (strong, nonatomic) UIImageView *thumbImageV;

- (instancetype)init UNAVAILABLE_ATTRIBUTE;
+ (instancetype)new UNAVAILABLE_ATTRIBUTE;

@end
