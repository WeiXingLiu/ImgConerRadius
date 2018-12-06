//
//  CreateHelper.m
//  ConreRadius
//
//  Created by wahaha on 2018/12/5.
//  Copyright © 2018年 LWX. All rights reserved.
//

#import "CreateHelper.h"
#import "UIImageView+Radius.h"

@implementation CreateHelper
+ (UIImageView *)getImageViewWithImage:(UIImage *)image
                                radius:(CGFloat)radius {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    imageView.radius = @(radius);
    [imageView setImage:image];
    return imageView;
}
@end
