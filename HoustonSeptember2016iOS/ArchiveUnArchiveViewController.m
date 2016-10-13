//
//  ArchiveUnArchiveViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/13/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ArchiveUnArchiveViewController.h"

@interface ArchiveUnArchiveViewController ()

@end

@implementation ArchiveUnArchiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    ShoppingList *shoppingList = [[ShoppingList alloc] init];
    shoppingList.name = @"HEB";
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:shoppingList];
    
    NSMutableArray *cars = [[NSMutableArray alloc] init];
    [cars addObject:@"Honda"];
    
    
    [userDefaults setObject:cars forKey:@"ShoppingList"];
    [userDefaults synchronize];
    
}

-(IBAction) getShoppingListButtonPressed {
    
     NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
     NSData *shoppingListData = [userDefaults objectForKey:@"ShoppingList"];
    
    ShoppingList *shoppingList =  (ShoppingList *) [NSKeyedUnarchiver unarchiveObjectWithData:shoppingListData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
