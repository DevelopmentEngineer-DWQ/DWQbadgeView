//
//  ViewController.m
//  DWQbadgeViewDemo
//
//  Created by 杜文全 on 14/3/25.
//  Copyright © 2014年 com.sdzw.duwenquan. All rights reserved.
//

#import "ViewController.h"
#import "DWQBadgeView.h"
@interface ViewController ()
@property (nonatomic,strong) DWQBadgeView *badgeView;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1、在父控件（parentView）上显示，显示的位置TopRight
    self.badgeView = [[DWQBadgeView alloc]initWithParentView:self.btn alignment:DWQBadgeViewAlignmentTopRight];
    //2、如果显示的位置不对，可以自己调整，是不是很人性化！
    //self.badgeView.badgePositionAdjustment = CGPointMake(-10, 10);
    //3、如果多个的badge,可以设置tag要辨别
    //self.badgeView.tag = 2;
    
    //1、背景色
    self.badgeView.badgeBackgroundColor = [UIColor redColor];
    //2、没有反光面
    self.badgeView.badgeOverlayColor = [UIColor clearColor];
    //3、外圈的颜色，默认是白色
    self.badgeView.badgeStrokeColor = [UIColor redColor];
    
    
    /*****设置数字****/
    //1、用字符
    self.badgeView.badgeText = @"1";
    //2、如果不显示就设置为空
    // self.badgeView.badgeText = nil;
    
    //当更新数字时，最好刷新，不然由于frame固定的，数字为2位时，红圈变形
    [self.badgeView setNeedsLayout];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
