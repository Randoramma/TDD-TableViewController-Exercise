//
//  BNRItem_Tests.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//

#import <XCTest/XCTest.h>
#import "BNRItem.h"

@interface BNRItem_Tests : XCTestCase
@property (strong, nonatomic) NSString *myItemName;
@property (strong, nonatomic) NSString *mySerialNumber;
@property (nonatomic) int myValueInDollars;
@end

@implementation BNRItem_Tests

- (void)setUp {
    [super setUp];
    [self setMyItemName:@"Item name"];
    [self setMySerialNumber:@"Serial Number"];
    [self setMyValueInDollars:2];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    _myItemName = nil;
    _mySerialNumber = nil;
    _myValueInDollars = 0;
    
}

-(void)testBNRItem_shouldNotBeNil {
    
    BNRItem *testItem = [[BNRItem alloc] init];
    
    XCTAssertNotNil(testItem);
    
}

-(void)testBNRParameterizedInit_shouldNotBeNil {
    BNRItem *testItem = [[BNRItem alloc] initWithItemName:[self myItemName] valueInDollars:[self myValueInDollars] serialNumber:[self mySerialNumber]];
    
    XCTAssertEqual([self myItemName], testItem.itemName);
    XCTAssertEqual([self myValueInDollars], testItem.valueInDollars);
    XCTAssertEqual([self mySerialNumber], testItem.serialNumber);
}

-(void)testBNRParameterizedInit_shouldItemNameBeNil {
    
    BNRItem *testItem = [[BNRItem alloc] initWithItemName:nil valueInDollars:[self myValueInDollars] serialNumber:[self mySerialNumber]];
    
    XCTAssertNil(testItem.itemName);
}

-(void)testBNRParameterizedInit_shouldValueBe0 {
    
    BNRItem *testItem = [[BNRItem alloc] initWithItemName:nil valueInDollars:0 serialNumber:nil];
    XCTAssertEqual(0, testItem.valueInDollars);
}

-(void)testBNRParameterizedInit_shouldSerialNumberBeNil {
    
    BNRItem *testItem = [[BNRItem alloc] initWithItemName:nil valueInDollars:0 serialNumber:nil];
    XCTAssertNil(testItem.serialNumber);
}

-(void)testBNRRandomInit_shouldNotBeNil {
    
    BNRItem *testItem = [BNRItem randomItem];
    
    XCTAssertNotNil(testItem.itemName);
    XCTAssertNotNil(testItem.serialNumber);
    XCTAssertNotNil(testItem.serialNumber); 
                         
    
}


-(void)testBNRItem_shouldReturnRandomName {
    // not sure how to test this method, but it appears that there are 9 possible return values.  I will create a dictionary containing 9 keys each for a different name.  Then I will generate 100 different names and put each one in its matching bucket. I think that statistically there should be 11.11 values in each dictionary so I'll have an error thrown if any bucket has more than 13 values.  margin of error?
    
    // I am skipping this function as time is currently limited.  I would create the names in a private helper method and put them in the dict there.  Return the dict and compare each value to have a count less than 12-14 % based on the number of names created.
    
}

-(void)testBNRItem_shouldReturnRandomNumber {
    // not sure how to test this method, but it appears that there are 100 possible return values.  I will create a dictionary containing 4 keys each for a different numeric range (1-25, 26-50, ect).  Then I will generate 100 different numbers and put each one in its matching bucket. I think that statistically there should be ~ 25 values in each dictionary so I'll have an error thrown if any bucket has more than 27 values.  margin of error?
    
    // I am skipping this function as time is currently limited.  I would create the names in a private helper method and put them in the dict there.  Return the dict and compare each value to have a count less than ~ 27 % based on the number of numbers created.
    
}

-(void)testBNRItem_shouldReturnRandomSerial {
 
    // unsure how to test this value ATM.
    
}




@end
