//
//  ViewController.m
//  text0521Action
//
//  Created by 叶王鹏 on 2018/5/21.
//  Copyright © 2018年 SPR. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "BAUISlider.h"

@interface ViewController ()

@property(nonatomic, strong)BAUISlider *umberSlider;//买入数量百分比
@property(nonatomic, strong)UILabel *sliderValueLabel;//滑块下面的值

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.umberSlider = [[BAUISlider alloc] initWithFrame:CGRectMake(50, 100, self.view.frame.size.width-100, 30)];
    self.umberSlider.titleStyle = TopTitleStyle;
    self.umberSlider.isShowTitle = YES;
    //设置最大和最小值
    self.umberSlider.minimumValue = 0;
    self.umberSlider.maximumValue = 100;
    self.umberSlider.maximumTrackTintColor = [UIColor orangeColor];//设置滑块线条的颜色（右边）,默认是灰色
    self.umberSlider.thumbTintColor = [UIColor blueColor];///设置滑块按钮的颜色
    [self.view addSubview:self.umberSlider];
 
//    UIImage *imagea=[self OriginImage:[UIImage imageNamed:@"round"] scaleToSize:CGSizeMake(35, 35)];
//    UIImage *imagea2=[self OriginImage:[UIImage imageNamed:@"round"] scaleToSize:CGSizeMake(35, 35)];
//    [self.umberSlider setThumbImage:imagea forState:UIControlStateNormal];
//    [self.umberSlider setThumbImage:imagea2 forState:UIControlStateHighlighted];
}

/*
 对原来的图片的大小进行处理
 @param image 要处理的图片
 @param size  处理过图片的大小
 */
-(UIImage *)OriginImage:(UIImage *)image scaleToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0,0, size.width, size.height)];
    UIImage *scaleImage=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaleImage;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
