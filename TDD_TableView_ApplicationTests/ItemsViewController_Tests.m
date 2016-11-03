//
//  ItemsViewController_Tests.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ItemsViewController.h"
#import "ItemStore.h"
#import "ItemStoreFake.h"

@interface ItemsViewController_Tests : XCTestCase

@end

@implementation ItemsViewController_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [ItemStoreFake sharedStore];
  
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [ItemStoreFake setSharedInstance:[ItemStoreFake sharedStore]];
    NSLog(@"The current items count is : %lu",(unsigned long)[[ItemStoreFake sharedStore] allItems].count);
    [super tearDown];
    
}

- (void)testItemsViewController_ShouldNotBeNil {
    
    ItemsViewController *newTestClass = [[ItemsViewController alloc] init];
    XCTAssertNotNil(newTestClass.tableView);
    
}

- (void)testItemsViewController_ShouldInitWithStore {
    
    ItemsViewController *newTestClass = [[ItemsViewController alloc] initWithStore: [ItemStoreFake sharedStore]];
    XCTAssertNotNil(newTestClass);
}

- (void)testItemsViewController_WillAddFiveItems {
    ItemsViewController *newTestClass = [[ItemsViewController alloc] initWithStore:[ItemStoreFake sharedStore]];
    
    XCTAssertEqual([[ItemStoreFake sharedStore] allItems].count, 5); 
    
}

@end
