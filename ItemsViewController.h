//
//  ItemsViewController.h
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ItemStore; 
@interface ItemsViewController : UITableViewController

-(instancetype)initWithStore: (ItemStore *)theStore; 
@end
