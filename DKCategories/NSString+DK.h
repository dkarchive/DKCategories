//
//  NSString+DK.h
//
//  Created by dkhamsing on 1/25/14.
//

#import <UIKit/UIKit.h>

/* Category for NSString. */
@interface NSString (DK)

/**
 Returns a Boolean if the receiver contains the given `string`.
 Credit: https://github.com/soffes
 @param string A string to test the the receiver for.
 @return A Boolean if the receiver contains the given `string`.
 */
- (BOOL)dk_containsString:(NSString *)string;


/*
 Returns the document path for a given filename.
 Credit: http://stackoverflow.com/questions/6821517/save-an-image-to-application-documents-folder-from-uiview-on-ios
 @param filename Name of the file.
 */
+ (NSString *)dk_documentPathForFilename:(NSString*)filename;


/**
 Returns the domain (i.e. domain.com) for a URL.
 @return Domain.
 */
- (NSString *)dk_domainForStringURL;


/**
 Adds "s" to the receiver for the given `number`.
 @param number Number to pluralize string with.
 @return The string with or without "s" added.
 */
- (NSString *)dk_pluralize:(NSInteger)dk_number;


/**
 Returns the person pluralization for the given `numberOfPeople`.
 @param numberOfPeople Number of people to pluralize.
 @return A string with the correct person pluralization.
 */
+ (NSString *)dk_pluralizePerson:(NSInteger)numberOfPeople;


/**
 Truncates receiver to given width.
 Credit: http://stackoverflow.com/questions/10693383/truncate-an-nsstring-to-width
 @param width Width to truncate string to.
 @param font Font to use in computing width.
 */
- (NSString *)dk_truncateToWidth:(CGFloat)width withFont:(UIFont*)font;


/**
 URL encode string.
 Credit: http://stackoverflow.com/questions/8088473/url-encode-an-nsstring
 @param: unecodedString String to encode.
 */
- (NSString *)dk_urlEncodeString:(NSString*)unencodedString;


@end
