//
//  ViewController.m
//  CaShapeLayer_Demo
//
//  Created by bioongroup on 15/11/18.
//  Copyright © 2015年 ylk. All rights reserved.
//

#import "ViewController.h"
#import "RotationLayer.h"

@interface ViewController ()
{
    RotationLayer *layer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    layer = [[RotationLayer alloc]initWithFrame:CGRectMake(50,50, 200, 200)];
    layer.center = CGPointMake(self.view.center.x, 200);
    [self.view addSubview:layer];

}
-(IBAction)click:(id)sender{
    [layer setAnimationFrom:[_starValue.text floatValue] toValue:[_toValue.text floatValue]];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
