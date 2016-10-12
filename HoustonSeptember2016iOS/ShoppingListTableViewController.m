//
//  ShoppingListTableViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/10/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ShoppingListTableViewController.h"

@interface ShoppingListTableViewController ()

@end

@implementation ShoppingListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // changing the color of nav bar
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    ShoppingList *shoppingList1 = [[ShoppingList alloc] init];
    shoppingList1.name = @"Kroger";
    
    [shoppingLists addObject:shoppingList1];
    
//    shoppingLists = [[NSMutableArray alloc] init];
//    
//    ShoppingList *kroger = [[ShoppingList alloc] init];
//    kroger.name = @"Kroger";
//    
//    [shoppingLists addObject:kroger];
//    
//    [self.tableView reloadData];
    
    shoppingLists = [NSMutableArray arrayWithObjects:@"Fiesta",@"Walmart",@"Kroger",@"Costco", nil];
    
//     ShoppingList *s1 = [ShoppingList alloc] init]
//         s1.title = @"Kroger";
//     s1.color = @"Green";
//    
//     [shoppingLists addObject:s1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [shoppingLists count];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    //controller.shoppingList = shoppingList;
    
    NSString *shoppingList = shoppingLists[indexPath.row];
    
    // if done using a class:
    // ShoppingList *shoppingList = shoppingLists[indexPath.row];
    
    ShoppingItemTableViewController *shoppingItemTableViewController =   segue.destinationViewController;
    
  //  shoppingItemTableViewController.selectedShoppingList = shoppingList;
    
    // if using classes
    // shoppingItemTableViewController.selectedShoppingList = shoppingList; // where the shoppingList is an object of ShoppingList class
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ShoppingListTableViewCell" forIndexPath:indexPath];
    
    cell.textLabel.text = shoppingLists[indexPath.row];
    return cell;
}



@end
