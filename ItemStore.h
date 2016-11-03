//
//  ItemStore.h
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem; 
@interface ItemStore : NSObject

@property (copy, nonatomic, readonly) NSArray * allItems;
+ (instancetype) sharedStore;
-(BNRItem *) createItem;
@end


