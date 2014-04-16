//
//  UIViewController+DK.h
//  DealSpotr
//
//  Created by Daniel on 4/15/14.
//  Copyright (c) 2014 ZipfWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (DK)

/**
 Returns YES if the device has a small screen (iPhone 4s and older, checks for the 960-by-640 resolution). 
 @return Boolean that specifies if the screen is small.
 */
- (BOOL)dk_isSmallScreen;


@end
