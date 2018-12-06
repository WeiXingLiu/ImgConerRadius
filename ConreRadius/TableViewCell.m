//
//  TableViewCell.m
//  ConreRadius
//
//  Created by wahaha on 2018/12/6.
//  Copyright © 2018年 LWX. All rights reserved.
//

#import "TableViewCell.h"
#import "CreateHelper.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.igView = [CreateHelper getImageViewWithImage:[UIImage new] radius:20];
        self.igView.frame = CGRectMake(10, 10, 40, 40);
        [self.contentView addSubview:self.igView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
