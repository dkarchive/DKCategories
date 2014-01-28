//
//  UIView+DK.m
//
//  Created by dkhamsing on 1/25/14.
//
//

#import "UIView+DK.h"
#import <QuartzCore/QuartzCore.h>
#import <tgmath.h>

@implementation UIView (DK)

- (void)dk_addBorder {
    [self dk_addBorderWithColor:[UIColor blackColor] width:1.0f];
}


- (void)dk_addBorderWithColor:(UIColor*)color width:(CGFloat)width {
    NSAssert(width>0, @"dk_addBorderWithColor width should be positive");
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}


- (void)dk_addBottomBorder {
    [self dk_addBottomBorderWithColor:[UIColor blackColor] width:1.0f];
}


- (void)dk_addBottomBorderWithColor:(UIColor *)color width:(CGFloat)width {
    NSAssert(width>0, @"dk_addBottomBorderWithColor width should be positive");
    
    CGRect frame = self.bounds;
    frame.origin.y = frame.size.height;
    frame.size.height = width;
    
    UIView *bborder = [[UIView alloc] initWithFrame:frame];
    bborder.backgroundColor = color;
    [self addSubview:bborder];
}

- (void)dk_addShadow {
    [self dk_addShadowWithColor:[UIColor blackColor] offset:CGSizeMake(0, 1) radius:2.0f opacity:0.25f];
}


- (void)dk_addShadowWithColor:(UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius opacity:(CGFloat)opacity {
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = radius;
    self.layer.shadowOpacity = opacity;
}


- (void)dk_fadeInWithAlpha:(CGFloat)alpha duration:(CGFloat)duration {
    NSAssert(alpha>0, @"dk_fadeInWithAlpha alpha should be positive");
    self.alpha=0.0f;
    [UIView animateWithDuration:duration delay:0.0f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.alpha = alpha;
    } completion:nil];
}


- (NSArray *)dk_superviews {
    NSMutableArray *superviews = [[NSMutableArray alloc] init];
    
    UIView *view = self;
    UIView *superview = nil;
    while (view) {
        superview = [view superview];
        if (!superview) {
            break;
        }
        
        [superviews addObject:superview];
        view = superview;
    }
    
    return superviews;
}


- (id)dk_firstSuperviewOfClass:(Class)superviewClass {
    for (UIView *view = [self superview]; view != nil; view = [view superview]) {
        if ([view isKindOfClass:superviewClass]) {
            return view;
        }
    }
    return nil;
}


#pragma mark - Frame

- (CGFloat)dk_top {
    return self.frame.origin.y;
}


- (void)setDk_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}


- (CGFloat)dk_right {
    return self.frame.origin.x + self.frame.size.width;
}


- (void)setDk_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    self.frame = frame;
}


- (CGFloat)dk_bottom {
    return self.frame.origin.y + self.frame.size.height;
}


- (void)setDk_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    self.frame = frame;
}


- (CGFloat)dk_left {
    return self.frame.origin.x;
}


- (void)setDk_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}


- (CGFloat)dk_width {
    return self.frame.size.width;
}


- (void)setDk_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}


- (CGFloat)dk_height {
    return self.frame.size.height;
}


- (void)setDk_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}


- (void)dk_centerHorizontally:(UIView*)view {
    CGRect frame = view.frame;
    frame.origin.x = (self.frame.size.width - frame.size.width)/2;
    frame.origin.x = ceilf(frame.origin.x);
    view.frame = frame;
}


- (void)dk_centerVertically:(UIView*)view {
    CGRect frame = view.frame;
    frame.origin.y = (self.frame.size.height - frame.size.height)/2;
    frame.origin.y = ceilf(frame.origin.y);
    view.frame = frame;
}


@end
