//
//  UIImageView+Radius.m
//  ConreRadius
//
//  Created by wahaha on 2018/12/5.
//  Copyright © 2018年 LWX. All rights reserved.
//

#import "UIImageView+Radius.h"

@implementation UIImageView (Radius)

+ (void)load {
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(setImage:)), class_getInstanceMethod(self, @selector(lwx_setImage:)));
}

- (void)lwx_setImage:(UIImage *)image {
    [self performSelector:@selector(lwx_setImage:) withObject:image afterDelay:0 inModes:@[NSDefaultRunLoopMode]];
}

- (void)layoutSubviews {
    if (self.radius.floatValue > 0) {
        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(self.radius.floatValue, self.radius.floatValue)];
        CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
        shapeLayer.frame = self.bounds;
        shapeLayer.path = maskPath.CGPath;
        self.layer.mask = shapeLayer;
    }
}

- (void)setRadius:(NSNumber *)radius {
    objc_setAssociatedObject(self, @"radius", radius, OBJC_ASSOCIATION_ASSIGN);
}

- (NSNumber *)radius {
    return objc_getAssociatedObject(self, @"radius");
}

@end
