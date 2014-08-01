//
//  NSData+DK.m
//
//  Created by dkhamsing on 2/24/14.
//

#import "NSData+DK.h"

@implementation NSData (DK)

+ (void)dk_cookiesLoad {
    [self dk_cookiesLoadWithLog:NO];
}


+ (void)dk_cookiesLoadWithLog:(BOOL)log {
    NSArray *cookies = [NSKeyedUnarchiver unarchiveObjectWithData: [[NSUserDefaults standardUserDefaults] objectForKey: @"sessionCookies"]];
    NSHTTPCookieStorage *cookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];    
    for (NSHTTPCookie *cookie in cookies){
        if (log)
            NSLog(@"NSData+DK: dk_cookiesLoadWithLog %@", cookie);
        [cookieStorage setCookie: cookie];
    }
    
    if ((log) && (cookies.count==0)) {
        NSLog(@"NSData+DK: dk_cookiesLoadWithLog no cookies found");
    }
}


+ (void)dk_cookiesSave {
    NSData *cookiesData = [NSKeyedArchiver archivedDataWithRootObject: [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies]];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject: cookiesData forKey: @"sessionCookies"];
    [defaults synchronize];
}


@end
