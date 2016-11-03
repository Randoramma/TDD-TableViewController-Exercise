//
//  ItemStoreFake.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import "ItemStoreFake.h"

@interface ItemStoreFake()

@end

@implementation ItemStoreFake

static ItemStoreFake *_sharedStore = nil; // provide a static property of the store.
static dispatch_once_t once_token = 0; // provide a static token value for dispatch.

///**
// *  Getter for the readonly array allItems.
// *
// *  @return <#return value description#>
// */
//-(NSArray *)allItems {
//    return [self.privateItems copy];
//}

#pragma mark - Initializers
/**
 *  Singleton init for the Item Store.
 *
 *  @return singleton of the item store.
 */
+ (instancetype) sharedStore {
  
  static id sharedStore;
  dispatch_once(&once_token, ^{
    if (_sharedStore == nil)
      sharedStore = [[ItemStoreFake alloc] init];
  });
  
  return sharedStore;
}


/**
 *  Mutator method that allows the current iteration of the singleton to be overridden.
 *
 *  @param instance instance of singleton we wish to wipe out.
 */
+(void)setSharedInstance:(ItemStoreFake *)instance {
    once_token = 0; // resets the once_token so dispatch_once will run again
     instance = nil;
    // _sharedStore = instance; // re-initializes the store.
}
@end
