//
//  NSData+DK.h
//
//  Created by dkhamsing on 2/24/14.
//

#import <Foundation/Foundation.h>

/* Category for NSData. */
@interface NSData (DK)

/**
 Load session cookies.
 Credit: http://stackoverflow.com/questions/14387662/afnetworking-persisting-cookies-automatically
 @param log Boolean that outputs with NSLog.
 */
+ (void)dk_cookiesLoadWithLog:(BOOL)log;


/**
 Load session cookies without logging.
 */
+ (void)dk_cookiesLoad;


/**
 Save session cookies.
 Credit: http://stackoverflow.com/questions/14387662/afnetworking-persisting-cookies-automatically
 */
+ (void)dk_cookiesSave;


@end
