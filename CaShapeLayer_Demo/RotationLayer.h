//
//  RotationLayer.h
//  CaShapeLayer_Demo
//
//  Created by bioongroup on 15/11/18.
//  Copyright © 2015年 ylk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotationLayer : UIView

//进度条的宽度
@property (nonatomic , assign)CGFloat progressLineWidth;
//背景的宽度
@property (nonatomic , assign)CGFloat backgroundLineWidth;
//背景进度条的颜色
@property (nonatomic , strong)UIColor *backgroundProgressColor;
//进度条的颜色
@property (nonatomic , strong)UIColor *progressColor;
//百分比
@property (nonatomic , assign)CGFloat percentage;
//距离边框边距偏移量
@property (nonatomic,assign) CGFloat offset;
//步长
@property (nonatomic,assign) CGFloat step;

//方法
-(void)setbackGoundLayerColor:(UIColor*)Color;
-(void)setLinewidth:(CGFloat)width;
-(void)setAnimationFrom:(CGFloat)fromeValue toValue:(CGFloat)toValue;
@end
