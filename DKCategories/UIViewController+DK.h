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
 Add list of views to receiver.
 @param subViews List of views.
 */
- (void)dk_addSubViews:(NSArray *)subViews;


/**
 Returns YES if the device has a small screen (iPhone 4s and older, checks for the 960-by-640 resolution). 
 @return Boolean that specifies if the screen is small.
 */
- (BOOL)dk_isSmallScreen;


#pragma mark - Child View Controller

//  See https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/CreatingCustomContainerViewControllers/CreatingCustomContainerViewControllers.html#//apple_ref/doc/uid/TP40007457-CH18-SW6 for more information.

/**
 Adds child view controller to receiver.
 @param childController Child view controller.
 */
- (void)dk_addChildController:(UIViewController*)childController;


/**
 Removes child view controller from receiver.
 @param childController Child view controller.
 */
- (void)dk_removeChildController:(UIViewController*)childController;


@end
