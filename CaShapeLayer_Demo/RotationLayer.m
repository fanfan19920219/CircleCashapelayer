//
//  RotationLayer.m
//  CaShapeLayer_Demo
//
//  Created by bioongroup on 15/11/18.
//  Copyright © 2015年 ylk. All rights reserved.
//
#define ANIMATION_TIME 3.0
#import "RotationLayer.h"
@interface RotationLayer()
//声明私有属性

//背景layer
@property (nonatomic , strong)CAShapeLayer *backGroundLayer;
//进度layer
@property (nonatomic , strong)CAShapeLayer *progressGroundLayer;

@end
@implementation RotationLayer

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){//初始化
        //初始化背景进度条
        _backGroundLayer = [CAShapeLayer layer];
        _backGroundLayer.frame = self.bounds;
        _backGroundLayer.fillColor = nil;//这个颜色是干嘛的?
        _backGroundLayer.strokeColor = [UIColor blackColor].CGColor;
        _backGroundLayer.lineWidth = 10.f;
        
        
        //初始化进度条
        _progressGroundLayer = [CAShapeLayer layer];
        _progressGroundLayer.frame = self.bounds;
        _progressGroundLayer.fillColor = nil;//??
        _progressGroundLayer.strokeColor = [UIColor redColor].CGColor;
        _progressGroundLayer.lineWidth = 10.f;
        _progressGroundLayer.strokeStart = 0.f;
        _progressGroundLayer.strokeEnd = 0.f;
        [self setbackGroundCircleLine];//画出来背景的圆
        [self.layer addSublayer:_backGroundLayer];
        [self.layer addSublayer:_progressGroundLayer];
    }return self;
}
//设置背景的颜色
-(void)setbackGoundLayerColor:(UIColor*)Color{
    _backGroundLayer.strokeColor = Color.CGColor;
}
-(void)setLinewidth:(CGFloat)width{
    _backGroundLayer.lineWidth = width;
    _progressGroundLayer.lineWidth = width;
}
//设置路径
-(void)setbackGroundCircleLine{
    UIBezierPath *path = [UIBezierPath bezierPath];//这是一个路径类
    path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - self.frame.origin.x, self.center.y - self.frame.origin.y) radius:(self.bounds.size.width - _backgroundLineWidth)/ 2 - _offset startAngle:-M_PI/2.0 endAngle:M_PI*1.5 clockwise:YES];
    _backGroundLayer.path = path.CGPath;
    _progressGroundLayer.path = path.CGPath;
}
//动画
-(void)setAnimationFrom:(CGFloat)fromeValue toValue:(CGFloat)toValue{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = [NSNumber numberWithFloat:fromeValue];
    animation.toValue   = [NSNumber numberWithFloat:toValue];
    animation.duration  = ANIMATION_TIME;
    _progressGroundLayer.strokeEnd = toValue;
    [_progressGroundLayer addAnimation:animation forKey:@"animation"];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
