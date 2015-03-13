//
//  DKDemoViewController.m
//  Demo
//
//  Created by dkhamsing on 1/25/14.
//
//

#import "DKDemoViewController.h"

// Categories
#import "NSData+DK.h"
#import "NSNumber+DK.h"
#import "NSString+DK.h"
#import "UIColor+DK.h"
#import "UIImage+DK.h"
#import "UIView+DK.h"
#import "UIViewController+DK.h"

@interface DKDemoViewController ()

@end

@implementation DKDemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // NSData
        [self demoLogTitle:@"NSData"];
        
        [NSData dk_cookiesSave];
        [NSData dk_cookiesLoadWithLog:YES];
        
        // NSNumber
        [self demoLogTitle:@"NSNumber"];
        
        {
            NSNumber *number = @3000;
            NSLog(@"dk_stringWithDecimal for %@: %@", number, [number dk_stringWithDecimal]);
        }
        
        // NSString
        [self demoLogTitle:@"NSString"];
        
        NSLog(@"dk_documentPathForFilename: %@", [NSString dk_documentPathForFilename:@"test.plist"]);
        
        {
            NSInteger number = 3;
            NSLog(@"dk_pluralize: I saved %@ %@", @(number), [@"item" dk_pluralize:number]);
            NSLog(@"dk_pluralizePeople: Saved by %@", [NSString dk_pluralizePerson:number]);
        }
        
        {
            NSString *link = @"http://www.github.com/dkhamsing";
            NSLog(@"dk_containsString: Is %@ a valid URL? %@", link, [link dk_containsString:@"http"] ? @"Yes" : @"No");
            
            {
                CGFloat width = 40;
                NSLog(@"dk_truncateToWidth: %@ truncated to %.0fpx = %@", link, width, [link dk_truncateToWidth:width withFont:[UIFont systemFontOfSize:10]]);
            }
            
            NSLog(@"dk_domainForStringURL: The domain for %@ is %@", link, [link dk_domainForStringURL]);
        }
        
        // UIColor
        UIColor *color1 = [UIColor dk_facebookColor];
        UIColor *color2 = [UIColor dk_colorWithHexString:@"#00FF00"];
        
        // UIView
        [self demoLogTitle:@"UIView"];
        
        UIView *squareView1 = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 50, 50)];
        squareView1.backgroundColor = color1;
        [squareView1 dk_addBorderWithColor:color2 width:2.0f];
        
        CGFloat inset = 20;
        UIView *squareView2 = [[UIView alloc] initWithFrame:CGRectMake(squareView1.dk_right + inset, 30, 50, 50)];
        squareView2.backgroundColor = [UIColor blackColor];
        [squareView2 dk_debug]; // Add a 1 pixel red border
        
        UIView *rectangleView = [[UIView alloc] initWithFrame:CGRectMake(squareView2.dk_right + inset, 30, 100, 50)];
        [rectangleView dk_styleRoundedCorner:4];
        rectangleView.backgroundColor = color1;
        [rectangleView dk_addShadow];
        
        UIView *circleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [circleView dk_styleCircle];
        circleView.backgroundColor = color2;
        [rectangleView dk_centerHorizontally:circleView];
        [rectangleView dk_centerVertically:circleView];
        [rectangleView dk_fadeInWithAlpha:0.5f duration:4.0f];
        [rectangleView addSubview:circleView];
        
        [UIView dk_addLineViewToViewController:self yCoordinate:rectangleView.dk_bottom +10 color:[UIColor redColor] lineHeight:1];
        
        [UIView dk_addSubviews:@[rectangleView] onView:self.view];
        
        // UIViewController
        [self dk_addSubviews: @[squareView1,squareView2]];
        
        NSLog(@"dk_viewController for the first square: %@", [squareView1 dk_viewController]);
        NSLog(@"dk_left: The black square's x origin is %.2f", squareView2.dk_left);
        NSLog(@"dk_superviews: The circle's superviews are %@", [circleView dk_superviews]);
        
        // UIViewController continued
        [self demoLogTitle:@"UIViewController"];
        if ([self dk_isSmallScreen]) {
            NSLog(@"dk_isSmallScreen: The device has a small screen.");
        }
        else {
            NSLog(@"dk_isSmallScreen: The device has a large screen.");
        }
        
        // UIImage
        UIImage *actionImage = [UIImage dk_maskedImageNamed:@"action" color:color1];
        CGRect frame;
        frame.origin.x = 10;
        frame.origin.y = rectangleView.dk_bottom +20;
        frame.size = actionImage.size;
        UIImageView *actionImageView = [[UIImageView alloc] initWithFrame:frame];
        actionImageView.image = actionImage;
        [self.view addSubview:actionImageView];
    }
    return self;
}

#pragma mark - Private

- (void)demoLogTitle:(NSString *)title {
    NSLog(@"\n >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> %@ Categories", title);
}

@end
