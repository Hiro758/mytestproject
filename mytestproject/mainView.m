//
//  mainView.m
//  mytestproject
//
//  Created by 丸山裕之 on 2015/01/12.
//  Copyright (c) 2015年 MARUYAMA, Hiroyuki. All rights reserved.
//

#import "mainView.h"
#import "FontAwesomeKit.h"

@implementation mainView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if ( self ) {
        self.backgroundColor = [UIColor whiteColor];
        {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
            FAKFontAwesome *icon = [FAKFontAwesome angleLeftIconWithSize:40];
            [icon addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor]];
            [btn setImage:[icon imageWithSize:CGSizeMake(40, 40)] forState:UIControlStateNormal];
            icon.drawingPositionAdjustment = UIOffsetMake(2, 2);
            [icon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
            [btn setImage:[icon imageWithSize:CGSizeMake(40, 40)] forState:UIControlStateHighlighted];
            [self addSubview:btn];
        }
        {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 0, 50, 50)];
            FAKFontAwesome *icon = [FAKFontAwesome angleRightIconWithSize:40];
            [icon addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor]];
            [btn setImage:[icon imageWithSize:CGSizeMake(40, 40)] forState:UIControlStateNormal];
            icon.drawingPositionAdjustment = UIOffsetMake(2, 2);
            [icon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
            [btn setImage:[icon imageWithSize:CGSizeMake(40, 40)] forState:UIControlStateHighlighted];
            [self addSubview:btn];
        }
        {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(200, 0, 50, 50)];
            FAKFontAwesome *icon = [FAKFontAwesome shoppingCartIconWithSize:40];
            [icon addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor]];
            [btn setImage:[icon imageWithSize:CGSizeMake(40, 40)] forState:UIControlStateNormal];
            icon.drawingPositionAdjustment = UIOffsetMake(2, 2);
            [icon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
            [btn setImage:[icon imageWithSize:CGSizeMake(40, 40)] forState:UIControlStateHighlighted];
            [btn addTarget:self action:@selector(circleButtonTapped:) forControlEvents:UIControlEventTouchDown];
            [self addSubview:btn];
        }
        
        FAKFontAwesome *icon = [FAKFontAwesome angleRightIconWithSize:40];
        _img = [icon imageWithSize:CGSizeMake(40, 40)];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    [_img drawAtPoint:CGPointMake(0, 200)];
}

- (void)circleButtonTapped:(UIButton *)button
{
    NSLog(@"circleButtonTapped");
    
    [UIView animateWithDuration:1.0f delay:0.5f options:UIViewAnimationOptionCurveEaseInOut animations:^ {
        //アニメーションで変化させたい値を設定する（最終的に変更したい値）
        button.frame = CGRectMake(220, 20, 10, 10);
    } completion:^(BOOL finish) {
    }];

    //完了時のコールバック
    [UIView animateWithDuration:1.0f delay:1.5f options:UIViewAnimationOptionCurveEaseInOut animations:^ {
        //アニメーションで変化させたい値を設定する（最終的に変更したい値）
        button.frame = CGRectMake(400, 20, 10, 10);
    } completion:^(BOOL finish) {
        //完了時のコールバック
        button.frame = CGRectMake(200, 0, 50, 50);
    }];
    //        button.frame = CGRectMake(200, 0, 50, 50);

}

@end
