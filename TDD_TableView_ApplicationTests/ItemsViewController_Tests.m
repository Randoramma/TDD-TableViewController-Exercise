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

ItemsViewController *newTestClass;

- (void)setUp {
  [super setUp];
  // Put setup code here. This method is called before the invocation of each test method in the class.
  [ItemStoreFake sharedStore];
  
}

- (void)tearDown {
  // Put teardown code here. This method is called after the invocation of each test method in the class.
  [ItemStoreFake setSharedInstance:[ItemStoreFake sharedStore]];
  newTestClass = nil;
  [super tearDown];
  
}

- (void)testItemsViewController_ShouldNotBeNil {
    newTestClass = [[ItemsViewController alloc] init];
  XCTAssertNotNil(newTestClass);
}

- (void)testItemsViewController_WithCustomInit_ShouldNotBeNil {
  newTestClass = [[ItemsViewController alloc] initWithStore: [ItemStoreFake sharedStore]];
  XCTAssertNotNil(newTestClass);
}

- (void)testItemsViewController_WillAddFiveItems_ShouldReturnEqual {
  newTestClass = [[ItemsViewController alloc] initWithStore:[ItemStoreFake sharedStore]];
  
  XCTAssertEqual([[ItemStoreFake sharedStore] allItems].count, 5);
}

-(void) testItemsViewController_NumberOfRows_ShouldReturnEqual {
  newTestClass = [[ItemsViewController alloc] initWithStore: [ItemStoreFake sharedStore]];
  NSInteger rows = [newTestClass tableView:[newTestClass tableView]
                     numberOfRowsInSection:nil];
  XCTAssertEqual(rows, [[ItemStoreFake sharedStore] allItems].count);
}

-(void) testItemViewController_CellReuseID_ShouldReturnEqual {
    newTestClass = [[ItemsViewController alloc] initWithStore: [ItemStoreFake sharedStore]];
  NSIndexPath *testPath = [NSIndexPath indexPathForRow:0 inSection:0];
  UITableViewCell *testCell = [newTestClass tableView:[newTestClass tableView]
                                cellForRowAtIndexPath: testPath];
  XCTAssertTrue([testCell.reuseIdentifier isEqualToString:@"UITableViewCell"]);
  
}

-(void) testItemViewController_TableViewCellRegistration_ShouldReturnEqual {
      newTestClass = [[ItemsViewController alloc] initWithStore: [ItemStoreFake sharedStore]];
  
  NSIndexPath *testPath = [NSIndexPath indexPathForRow:0 inSection:0];
  UITableViewCell *testedCell = [newTestClass tableView:[newTestClass tableView] cellForRowAtIndexPath:testPath];
                                 
                                 
  UITableViewCell * testCell = (UITableViewCell*)[[[newTestClass tableView] visibleCells]lastObject];

  XCTAssertEqual(testedCell.class, testCell.class);
}







@end
