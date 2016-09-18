//
//  BasicAnimationViewController.m
//  DSAnimationDemo
//
//  Created by 童玉龙 on 16/9/18.
//  Copyright © 2016年 齐滇大圣. All rights reserved.
//

#import "BasicAnimationViewController.h"

@implementation BasicAnimationViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self initScaleLayer];
}


- (void)initScaleLayer
{
    
    CALayer *scaleLayer = [[CALayer alloc] init];
    scaleLayer.backgroundColor = [UIColor blueColor].CGColor;
    scaleLayer.frame = CGRectMake(60, 100, 50, 50);
    scaleLayer.cornerRadius = 10;
    [self.view.layer addSublayer:scaleLayer];
    
    
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    scaleAnimation.toValue = [NSNumber numberWithFloat:1.5];
    scaleAnimation.autoreverses = YES;
    scaleAnimation.fillMode = kCAFillModeForwards;
    scaleAnimation.repeatCount = MAXFLOAT;
    scaleAnimation.duration = 0.8;
    
    
    [scaleLayer addAnimation:scaleAnimation forKey:@"scaleAnimation"];
}

@end
