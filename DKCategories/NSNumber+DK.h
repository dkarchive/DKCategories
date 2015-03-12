//
//  NSNumber+DK.h
//
//  Created by dkhamsing on 1/25/14.
//

/* Category for NSNumber. */
#import <Foundation/Foundation.h>

@interface NSNumber (DK)

/**
 Display number with decimal separator.
 @return String with decimal separator (large number)
 */
- (NSString*)dk_stringWithDecimal;

@end
