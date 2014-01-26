//
//  NSNumberTests.m
//  Demo
//
//  Created by Daniel on 1/25/14.
//
//

#import <XCTest/XCTest.h>
#import "NSNumber+DK.h"
#import "NSString+DK.h"

@interface NSNumberTests : XCTestCase

@end

@implementation NSNumberTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testNSNumber {
    XCTAssertTrue([[@3000 dk_stringWithDecimal] dk_containsString:@","], @"");
    XCTAssertTrue(![[@300 dk_stringWithDecimal] dk_containsString:@","], @"");
}

@end
