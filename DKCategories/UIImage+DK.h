//
//  UIImage+DK.h
//
//  Created by dkhamsing on 5/3/14.
//

#import <UIKit/UIKit.h>

/* Category for UIImage. */
@interface UIImage (DK)

/**
 Get masked image for a color.
 Credit: https://gist.github.com/1102091/b196c1ec001d1a69b9940f0f32043d62d5f596d4
 @param name Name of image to load from bundle.
 @param color Color mask to apply.
 @return Masked image.
 */
+ (UIImage *)dk_maskedImageNamed:(NSString *)name color:(UIColor *)color;


@end
