//
//  UIColor+DK.m
//  DealSpotr
//
//  Created by Daniel on 4/24/14.
//  Copyright (c) 2014 ZipfWorks. All rights reserved.
//

#import "UIColor+DK.h"

@implementation UIColor (DK)

+ (UIColor*)dk_facebookColor {
    return [UIColor dk_colorWithHexString:@"#3b5998"];
}


#pragma mark - Helpers

+ (UIColor*)dk_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
}


+ (UIColor *)dk_colorWithHexString:(NSString *)hexString {
    NSString *firstCharacter = [hexString substringToIndex:1];
    if (![firstCharacter isEqualToString:@"#"]) {
        hexString = [hexString stringByAppendingString:@"#"];
    }
    
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}


@end
