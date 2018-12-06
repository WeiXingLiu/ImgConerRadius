//
//  CreateHelper.h
//  ConreRadius
//
//  Created by wahaha on 2018/12/5.
//  Copyright © 2018年 LWX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CreateHelper : NSObject

/**
 返回UIImageView

 @param image image
 @param radius 弧度 radius
 @return UIImageView实例
 */
+ (UIImageView *)getImageViewWithImage:(UIImage *)image
                                radius:(CGFloat)radius;
@end

NS_ASSUME_NONNULL_END
