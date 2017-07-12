//
//  ButtonIView.h
//  ButtonArrange
//
//  Created by lidianchao on 2017/7/11.
//  Copyright © 2017年 lidianchao. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonCallback)(NSArray *arr);
@interface ButtonIView : NSObject
+ (ButtonIView *)sharedManager;
- (void)configMutibleButton:(int)buttonCount horizontalMaxCount:(int)horizontalMaxCount buttonSize:(CGSize)buttonSize viewSize:(CGSize)viewSize contentView:(UIView *)contentView callback:(ButtonCallback)callback;
@end
