//
//  ItemStore.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import "ItemStore.h"
#import "BNRItem.h"

@interface ItemStore ()
@property (nonatomic) NSMutableArray *privateItems;


@end
@implementation ItemStore

static ItemStore *_sharedStore = nil; // provide a static property of the store.
//static dispatch_once_t once_token; // provide a static token value for dispatch.


#pragma mark - Initializers
/**
 *  Singleton init for the Item Store.
 *
 *  @return singleton of the item store.
 */
+ (instancetype) sharedStore {
    
    static id sharedStore;
    static dispatch_once_t once_token;
    dispatch_once(&once_token, ^{
      if (_sharedStore == nil)
        sharedStore = [[ItemStore alloc] init];
    });

    return sharedStore;
}

/**
 *  Code correcting potential inauthorized use of ivar init.
 *
 *  @return nil.  Do not use this.

 NOTE: No longer required due to the dispatch_token  
 
-(instancetype) init {

    [NSException raise:@"Singleton" format:@" Use +[ItemStore sharedStore]"];
    return nil;
}
*/


/**
 *  Private initializer. Also instantiates private Items array.
 *
 *  @return instance of Item store.
 */
-(instancetype) init {
    self = [super init];
    self.privateItems = nil; 
    self.privateItems = [[NSMutableArray alloc] init];
    
    return self;
}

-(BNRItem *) createItem {
    BNRItem * item = [BNRItem randomItem];
    [_privateItems addObject:item];
    return item;
}

#pragma mark - Overrided Getters

/**
 *  Getter for the readonly array allItems.
 *
 *  @return <#return value description#>
 */
-(NSArray *)allItems {
    return [self.privateItems copy];
}


@end
