//
//  DKDemoViewController.m
//  Demo
//
//  Created by dkhamsing on 1/25/14.
//
//

#import "DKDemoViewController.h"
#import "NSNumber+DK.h"
#import "NSString+DK.h"
#import "UIView+DK.h"
#import "UIViewController+DK.h"

@interface DKDemoViewController ()

@end

@implementation DKDemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // NSNumber
        NSLog(@"- NSNumber Categories");
        
        NSLog(@"dk_stringWithDecimal: %@", [@3000 dk_stringWithDecimal]);
        
        // NSString
        NSLog(@"- NSString Categories");
        
        NSInteger number = 3;
        NSLog(@"dk_pluralize: I saved %d %@", number, [@"item" dk_pluralize:number]);
        NSLog(@"dk_pluralizePeople: Saved by %@", [NSString dk_pluralizePerson:number]);
        
        NSString *link = @"www.github.com/dkhamsing";
        NSLog(@"dk_containsString: Is %@ a valid URL? %@", link, [link dk_containsString:@"http"] ? @"Yes" : @"No");
        
        CGFloat width = 40;
        NSLog(@"dk_truncateToWidth: %@ truncated to %.0fpx = %@", link, width, [link dk_truncateToWidth:width withFont:[UIFont systemFontOfSize:10]]);
        
        // UIView
        UIColor *color1 = [UIColor purpleColor];
        UIColor *color2 = [UIColor orangeColor];
        
        UIView *squareView1 = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 50, 50)];
        squareView1.backgroundColor = color1;
        [squareView1 dk_addBorderWithColor:color2 width:2.0f];
        
        CGFloat inset = 20;
        UIView *squareView2 = [[UIView alloc] initWithFrame:CGRectMake(squareView1.dk_right + inset, 30, 50, 50)];
        squareView2.backgroundColor = [UIColor blackColor];
        [squareView2 dk_addBottomBorderWithColor:color2 width:2.0f];
        
        UIView *rectangleView = [[UIView alloc] initWithFrame:CGRectMake(squareView2.dk_right + inset, 30, 100, 50)];
        rectangleView.backgroundColor = color1;
        [rectangleView dk_addShadow];
        
        UIView *squareView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        squareView3.backgroundColor = color2;
        [rectangleView dk_centerHorizontally:squareView3];
        [rectangleView dk_centerVertically:squareView3];
        [rectangleView dk_fadeInWithAlpha:0.5f duration:4.0f];
        [rectangleView addSubview:squareView3];

        // UIViewController
        [self dk_addSubViews: @[squareView1,squareView2,rectangleView] ];
        
        NSLog(@"- UIView Categories");
        NSLog(@"dk_left: The black square's x origin is %.2f", squareView2.dk_left);
        NSLog(@"dk_superviews: The orange square's superviews are %@", [squareView3 dk_superviews]);
        
        // UIViewController continued
        NSLog(@"- UIViewController Categories");
        if ([self dk_isSmallScreen])
            NSLog(@"dk_isSmallScreen: The device has a small screen.");
        else
            NSLog(@"dk_isSmallScreen: The device has a large screen.");
    }
    return self;
}

@end
