//
//  ItemsViewController.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import "ItemsViewController.h"
#import "ItemStore.h"

@implementation ItemsViewController

-(instancetype)initWithStore: (ItemStore *)theStore {
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
      
        for (int i = 0; i < 5; i++) {
          NSLog(@"The store is %@, and the itemCount is %lu", theStore.description, (unsigned long)[theStore allItems].count);
          [theStore createItem];
        }
    }
    return self; 
}

@end
