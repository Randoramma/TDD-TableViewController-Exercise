//
//  ItemStore_Tests.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//

#import <XCTest/XCTest.h>
#import "ItemStore.h"
#import "BNRItem.h"
@interface ItemStore_Tests : XCTestCase

@end

@implementation ItemStore_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testItemStore_ShouldNotBeNil {
    XCTAssertNotNil([ItemStore sharedStore]);
}


- (void)testItemStore_shouldReturnAllItemsArrayNotNil {
    XCTAssertNotNil([[ItemStore sharedStore] allItems]);
    
}

- (void)testItemStore_ShouldCreateBNRItem {
    
    BNRItem * testItem = [[ItemStore sharedStore] createItem];
    XCTAssertNotNil(testItem);
}

-(void)testItemStore_ShouldIncreaseCountByOne {
    
    long preCreateCount = (unsigned long)[[[ItemStore sharedStore] allItems] count];
    BNRItem *theItem = [[ItemStore sharedStore] createItem];
    long postCreateCount = (unsigned long)[[[ItemStore sharedStore] allItems] count];
    
    
    
    XCTAssertEqual(preCreateCount + 1, postCreateCount);
}



@end
