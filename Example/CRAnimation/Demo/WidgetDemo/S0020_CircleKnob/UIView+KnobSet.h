//
//  UIView+KnobSet.h
//  CRAnimation
//
//  Created by Bear on 2017/7/19.
//  Copyright © 2017年 BearRan. All rights reserved.
//

#import <UIKit/UIKit.h>

#define        fullAngleValue  360.0
#define        fanCount        10                           //扇页总数
#define        fanShowCount    8                            //显示的扇页个数
#define        angleForFan     fullAngleValue / fanCount    //每个扇页夹脚
#define        startAngleValue (90 - (fullAngleValue - fanShowCount*angleForFan)/2)
#define        endAngleValue   startAngleValue

//  开关 光源点到目的中心，垂直平分线，反向延长线
static BOOL drawAssistLine  = NO;
//  开关 大旋钮里的辅助线
static BOOL showKnobReferenceLine = NO;

//  角度转弧度
#define degreesToRadian(x) (M_PI * x / 180.0)

//  弧度转角度
#define radiansToDegrees(x) (180.0 * x / M_PI)

@interface UIView (KnobSet)

@end
