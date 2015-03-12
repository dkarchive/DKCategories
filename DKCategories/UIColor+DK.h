//
//  UIColor+DK.h
//
//  Created by dkhamsing on 4/24/14.
//

#import <UIKit/UIKit.h>

/* Category for UIColor. */
@interface UIColor (DK)

/**
 Get the Facebook color.
 */
+ (UIColor*)dk_facebookColor;


/**
 Get the UITextFiled placeholder color.
 */
+ (UIColor*)dk_placeholderColor;


#pragma mark - Helpers

/**
 Update color to use in navigation bar (iOS 7 adjusts for transparency).
 Credit: https://github.com/kgn/UIColorCategories/tree/master/UIColorCategories
 */
- (UIColor *)dk_colorForTranslucency;


/**
 Get a color with RGB.
 @param red Red.
 @param blue Blue.
 @param green Green.
 */
+ (UIColor*)dk_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;


/**
 Get a color with a hex code.
 @param hexString String value of the hex code.
 */
+ (UIColor *)dk_colorWithHexString:(NSString *)hexString;


@end
