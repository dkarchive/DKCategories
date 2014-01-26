//
//  NSString+DK.m
//
//  Created by dkhamsing on 1/25/14.
//
//

#import "NSString+DK.h"

@implementation NSString (SS)

- (BOOL)dk_containsString:(NSString *)string {
    return !NSEqualRanges([self rangeOfString:string], NSMakeRange(NSNotFound, 0));
}


- (NSString *)dk_pluralize:(NSInteger)number {
    if (number==1)
        return self;
    
    return [self stringByAppendingString:@"s"];
}


+ (NSString *)dk_pluralizePerson:(NSInteger)numberOfPeople {
    if (numberOfPeople==1)
        return @"1 person";
    
    return [NSString stringWithFormat:@"%d people", numberOfPeople ];
}


@end
