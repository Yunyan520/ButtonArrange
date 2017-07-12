//
//  ButtonCellTableViewCell.m
//  ButtonArrange
//
//  Created by lidianchao on 2017/7/11.
//  Copyright © 2017年 lidianchao. All rights reserved.
//

#import "ButtonCellTableViewCell.h"
#import "ButtonIView.h"
@implementation ButtonCellTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
        [self configUI];
    }
    return self;
}
- (void)configUI
{
    int buttonCount = 8;
    self.contentView.backgroundColor = [UIColor greenColor];
    ButtonIView *view = [ButtonIView sharedManager];
    [view configMutibleButton:buttonCount horizontalMaxCount:5 buttonSize:CGSizeMake(10, 10) viewSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 100) contentView:self.contentView callback:^(NSArray *arr) {
        for (UIButton *button in arr)
        {
            [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        }
        _buttonArray = arr;
    }];
}
- (void)buttonClicked:(id)sender
{
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
