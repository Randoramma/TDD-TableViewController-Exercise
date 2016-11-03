//
//  ItemStore.h
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//

#import <Foundation/Foundation.h>

@class BNRItem; 
@interface ItemStore : NSObject

@property (copy, nonatomic, readonly) NSArray * allItems;
+ (instancetype) sharedStore;
-(BNRItem *) createItem;
@end


