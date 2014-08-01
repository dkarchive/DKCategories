//
//  NSData+DK.h
//
//  Created by dkhamsing on 2/24/14.
//

#import <Foundation/Foundation.h>

@interface NSData (DK)

/**
 Load session cookies.
 @param log Boolean that outputs with NSLog.
 Credits: http://stackoverflow.com/questions/14387662/afnetworking-persisting-cookies-automatically
 */
+ (void)dk_cookiesLoadWithLog:(BOOL)log;


/**
 Load session cookies without logging.
 */
+ (void)dk_cookiesLoad;


/**
 Save session cookies.
 Credits: http://stackoverflow.com/questions/14387662/afnetworking-persisting-cookies-automatically
 */

+ (void)dk_cookiesSave;


@end
