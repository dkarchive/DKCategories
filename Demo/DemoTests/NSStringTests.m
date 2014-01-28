//
//  NSStringTests.m
//  DemoTests
//
//  Created by dkhamsing on 1/25/14.
//
//

#import <XCTest/XCTest.h>
#import "NSString+DK.h"

@interface NSStringTests : XCTestCase

@end

@implementation NSStringTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testNSString {
    XCTAssertTrue([@"github.com" dk_containsString:@".com"], @"");
    XCTAssert([@"github.com" dk_containsString:@"dkhamsing"]==0, @"");

    XCTAssertTrue([[@"item" dk_pluralize:3] isEqualToString:@"items"], @"");
    XCTAssertTrue([[@"item" dk_pluralize:1] isEqualToString:@"item"], @"");
    XCTAssertTrue([[@"item" dk_pluralize:-1] isEqualToString:@"error"], @"");
    XCTAssertTrue([[@"item" dk_pluralize:0] isEqualToString:@"items"], @"");

    
    XCTAssertTrue([[NSString dk_pluralizePerson:3] isEqualToString:@"3 people"], @"");
    XCTAssertTrue([[NSString dk_pluralizePerson:1] isEqualToString:@"1 person"], @"");
    XCTAssertTrue([[NSString dk_pluralizePerson:-1] isEqualToString:@"error"], @"");
    XCTAssertTrue([[NSString dk_pluralizePerson:0] isEqualToString:@"no one"], @"");
}

@end
