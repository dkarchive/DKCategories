//
//  NSData+DK.h
//
//  Created by dkhamsing on 2/24/14.
//

#import <Foundation/Foundation.h>

@interface NSData (DK)

/**
 Load session cookies.
 Credits: http://stackoverflow.com/questions/14387662/afnetworking-persisting-cookies-automatically
 */
+ (void)dk_cookiesLoad;

/**
 Save session cookies.
 Credits: http://stackoverflow.com/questions/14387662/afnetworking-persisting-cookies-automatically
 */

+ (void)dk_cookiesSave;

@end
