//
//  ItemsViewController.m
//  TDD_TableView_Application
//
//  Created by Randy McLain on 11/2/16.
//  Copyright © 2016 National Center for Telehealth & Technology. All rights reserved.
//

#import "ItemsViewController.h"
#import "ItemStore.h"
#import "BNRItem.h"
@interface ItemsViewController ()
@property (strong, nonatomic) ItemStore * myStore;
  
  
@end


@implementation ItemsViewController

// string property containing the value for the reuse identifier.  
NSString *TABLE_VIEW_CELL_REUSE_ID = @"UITableViewCell";

-(instancetype)initWithStore: (ItemStore *)theStore {
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
      _myStore = theStore;
        for (int i = 0; i < 5; i++) {
          NSLog(@"The store is %@, and the itemCount is %lu", theStore.description, (unsigned long)[theStore allItems].count);
          [_myStore createItem];
        }
    }
    return self; 
}

#pragma mark - LifeCycle Methods 

-(void)viewDidLoad {
  [super viewDidLoad];
  
  [[self tableView] registerClass:[UITableViewCell class]
           forCellReuseIdentifier:TABLE_VIEW_CELL_REUSE_ID];

}

#pragma mark - Table View DataSource Delegate methods 

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [_myStore allItems].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

  UITableViewCell * theCell = [[self tableView] dequeueReusableCellWithIdentifier: TABLE_VIEW_CELL_REUSE_ID
                                                   forIndexPath:indexPath];
  
  if (theCell == nil) {
    theCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:TABLE_VIEW_CELL_REUSE_ID];
  }
    BNRItem *itemAtRow = [[_myStore allItems] objectAtIndex:indexPath.row];
    theCell.textLabel.text = [itemAtRow description];

  return theCell;
  
}



@end
