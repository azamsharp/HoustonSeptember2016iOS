//
//  ShoppingListTableViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/10/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingItemTableViewController.h" 
#import "ShoppingListDetailsViewController.h" 
#import "ShoppingList.h" 

@interface ShoppingListTableViewController : UITableViewController
{
    NSMutableArray *shoppingLists; 
}
@end
