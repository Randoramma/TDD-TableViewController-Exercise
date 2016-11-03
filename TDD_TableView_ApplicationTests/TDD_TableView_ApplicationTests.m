//
//  TDD_TableView_ApplicationTests.m
//  TDD_TableView_ApplicationTests
//
//  Created by Randy McLain on 11/2/16.
//

#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "ItemsViewController.h"

@interface TDD_TableView_ApplicationTests : XCTestCase

@end

@implementation TDD_TableView_ApplicationTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testSelfRootView_ShouldBeItemsViewController {
 
    UIViewController *rootViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    UIViewController *itemsVC = [[ItemsViewController alloc] init];
    
    XCTAssertEqual(rootViewController.class, itemsVC.class);
}

-(void) testBackgroundColor_shouldBeWhite {
    UIView *rootView = [[[[UIApplication sharedApplication] keyWindow] rootViewController] view];
    
    XCTAssertEqual(rootView.backgroundColor, [UIColor whiteColor]);
}


@end
