//
//  UIColorTests.m
//  DemoTests
//
//  Created by dkhamsing on 1/25/14.
//
//

#import <XCTest/XCTest.h>
#import "UIColor+DK.h"

@interface UIColorTests : XCTestCase

@end

@implementation UIColorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testUIColor {
    XCTAssertTrue([[UIColor redColor] isEqual: [UIColor dk_colorWithHexString:@"FF0000"]], @"");
    XCTAssertTrue([[UIColor redColor] isEqual: [UIColor dk_colorWithHexString:@"#FF0000"]], @"");
    XCTAssertTrue([[UIColor dk_facebookColor] isEqual:[UIColor dk_colorWithHexString:@"#3b5998"]], @"");
}

@end
