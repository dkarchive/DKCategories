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
    
    if (number<0)
        return @"error";
    
    return [self stringByAppendingString:@"s"];
}


+ (NSString *)dk_pluralizePerson:(NSInteger)numberOfPeople {
    if (numberOfPeople==1)
        return @"1 person";
    
    if (numberOfPeople==0)
        return @"no one";
    
    if (numberOfPeople<0)
        return @"error";
    
    return [NSString stringWithFormat:@"%d people", numberOfPeople ];
}


@end
