//
//  NSNumber+DK.m
//
//  Created by dkhamsing on 1/25/14.
//

#import "NSNumber+DK.h"
#import <tgmath.h>

@implementation NSNumber (DK)

- (NSString*)dk_stringWithDecimal {
    NSInteger dk_number = ceilf(self.floatValue);
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init] ;
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *retVal = [numberFormatter stringFromNumber: [NSNumber numberWithInteger:dk_number] ];
    return retVal;
}

@end
