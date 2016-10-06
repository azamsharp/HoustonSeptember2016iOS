//
//  GroceriesViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/5/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "GroceriesViewController.h"


@interface GroceriesViewController ()

@end

@implementation GroceriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tasks = [NSMutableArray array];
    
    Task *task1 = [[Task alloc] init];
    task1.title = @"Clean the dishes";
    
    [tasks addObject:task1];
    
    groceries = [NSMutableArray arrayWithObjects:@"Cookies",@"Chips",@"Soda",@"Milk",@"Cereal",@"Paper Clips",@"Paper",@"Noodles",@"Cream", nil];
    
    // assigning the delegates and datasource
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [groceries count];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"cellForRowAtIndexPath is fired");
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CatCell" forIndexPath:indexPath];
    
    cell.textLabel.text = groceries[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"cat1.jpg"];
    cell.detailTextLabel.text = @"I like Soda";
    
    return cell;
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
