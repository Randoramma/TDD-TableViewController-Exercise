//
//  ItemStoreFake.h
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//

#import <Foundation/Foundation.h>
#import "ItemStore.h"
@class BNRItem;
@interface ItemStoreFake : ItemStore

@property (readonly, nonatomic) BOOL wasItemStoreCalled;

+(void)setSharedInstance:(ItemStoreFake *)instance;
@end
