//
//  ButtonIView.m
//  ButtonArrange
//
//  Created by lidianchao on 2017/7/11.
//  Copyright © 2017年 lidianchao. All rights reserved.
//

#import "ButtonIView.h"

@implementation ButtonIView
+ (ButtonIView *)sharedManager
{
    static ButtonIView *instance = nil;
    static dispatch_once_t once_token;
    dispatch_once(&once_token, ^{
        instance = [[ButtonIView alloc] init];
    });
    return instance;
}
- (void)configMutibleButton:(int)buttonCount horizontalMaxCount:(int)horizontalMaxCount buttonSize:(CGSize)buttonSize viewSize:(CGSize)viewSize contentView:(UIView *)contentView callback:(ButtonCallback)callback
{
    NSMutableArray *buttonArr = [NSMutableArray array];
    float buttonTotleWidth = horizontalMaxCount * buttonSize.width;
    float rank = (viewSize.width - buttonTotleWidth) / (horizontalMaxCount + 1);
    
    int verticalCount = (buttonCount - 1) / horizontalMaxCount + 1;//几行
    float buttonTotltHeight = verticalCount * buttonSize.height;
    float verticalRank = (viewSize.height - buttonTotltHeight) / (verticalCount + 1);
    int count = buttonCount <= horizontalMaxCount ? buttonCount : horizontalMaxCount;
    for (int i = 0; i < verticalCount; i++) {
        for (int j = 0; j < count; j++) {
            int totleButtonCount = (i * horizontalMaxCount + j);
            if(totleButtonCount + 1 > buttonCount)
            {
                continue;
            }
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            float buttonX = rank + (buttonSize.width + rank) * j;
            float buttonY = verticalRank + (buttonSize.height + verticalRank) * i;
            button.frame = CGRectMake(buttonX, buttonY, buttonSize.width, buttonSize.height);
            button.tag = totleButtonCount;
            button.backgroundColor = [UIColor redColor];
            [buttonArr addObject:button];
            [contentView addSubview:button];
        }
    }
    callback(buttonArr);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
