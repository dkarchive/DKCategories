//
//  UIViewTests.m
//  Demo
//
//  Created by Daniel on 1/25/14.
//
//

#import <XCTest/XCTest.h>
#import "UIView+DK.h"

@interface UIViewTests : XCTestCase

@end

@implementation UIViewTests

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

- (void)testUIView
{
    UIView *testView1 = [[UIView alloc] init];
    [testView1 dk_addBorder];
    XCTAssertTrue(testView1.layer.borderWidth == 1, @"");
    
    UIView *testView2 = [[UIView alloc] init];
    [testView2 dk_addBottomBorder];
    XCTAssertTrue(testView2.subviews.count>0, @"");
    
    UIView *subview = testView2.subviews.firstObject;
    XCTAssertTrue(subview.frame.size.height==1, @"");
    
    [testView2 dk_addShadow];
    XCTAssertTrue(testView2.layer.shadowRadius == 2, @"");

    CGFloat alpha = 0.8f;
    [testView2 dk_fadeInWithAlpha:alpha duration:0.0];
    XCTAssertTrue(testView2.alpha==alpha, @"");

    UIView *testView3 = [[UIView alloc] init];
    [testView1 addSubview:testView2];
    [testView2 addSubview:testView3];
    XCTAssertTrue([testView3 dk_superviews].count==2, @"");
    
    UILabel *label = [[UILabel alloc] init];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 3)];
    [button addSubview:label];
    [label addSubview:testView3];
    XCTAssertTrue([testView3 dk_firstSuperviewOfClass:[UIButton class]] == button, @"");
    
    label.frame = CGRectMake(0, 0, 10, 1);
    [button dk_centerHorizontally:label];
    [button dk_centerVertically:label];
    XCTAssertTrue(label.dk_left==10, @"");
    XCTAssertTrue(label.dk_right==20, @"");
    XCTAssertTrue(label.dk_top==1, @"");
    XCTAssertTrue(label.dk_bottom==2, @"");
}

@end
