//
//  mainView.h
//  mytestproject
//
//  Created by 丸山裕之 on 2015/01/12.
//  Copyright (c) 2015年 MARUYAMA, Hiroyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainView : UIView
{
    UIImage *_img;
    Boolean _isOpen;
    CGAffineTransform _originalCircle;
}

- (void)circleButtonTapped:(UIButton *)button;

@end
