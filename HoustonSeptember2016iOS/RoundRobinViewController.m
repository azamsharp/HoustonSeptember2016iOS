//
//  RoundRobinViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/3/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "RoundRobinViewController.h"


@interface RoundRobinViewController ()

@end

@implementation RoundRobinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)recipeButtonPressed:(id)sender {
    
    
    Reciple *recipe = [[Reciple alloc] init];
    recipe.title = self.foodText.text;
    
    Reciple *burger =[[Reciple alloc] init];
    burger.title = @"burgers";
    
   // burger.incrediants = [[NSMutableArray alloc] init];
    
    //burger.incrediants = [NSMutableArray arrayWithObject:@"Burger Patty"];
    
    Incrediant *spice = [[Incrediant alloc] init];
    spice.title = @"Red Crushed Pepper";
    spice.pictureURL = @"google.com/spice.png";
    spice.noOfCalories = 100;
    
    burger.incrediants = [[NSMutableArray alloc] init]; // empty array
    [burger.incrediants addObject:spice];
    
//    burger.incrediants = [NSMutableArray arrayWithObjects:@"Burger Patty",@"Bun", nil];
    
   // burger.incrediants = [[NSMutableArray alloc] init];
//    [burger.incrediants addObject:@"Lettuce"];
//    [burger.incrediants addObject:@"Onions"];
//    [burger.incrediants addObject:@"Cheese"];
    
    
    
   // burger.incrediants = [NSMutableArray array];
    
    [burger.incrediants addObject:@"Burger Patty"];
    
    

    NSMutableArray *recipes = [[NSMutableArray alloc] init];
    
    [recipes addObject:recipe];
    [recipes addObject:burger];
    
    NSString *recipesString = @"";
    
    NSString *city =  [@"Houston" stringByAppendingString:@"TX"];
    
    for(int i=0;i<recipes.count;i++){
        
        Reciple *myFavoriteFood =   recipes[i];
        
        NSString *formattedString = [NSString stringWithFormat:@"%@ ",myFavoriteFood.title];
        
        recipesString =  [recipesString stringByAppendingString:formattedString];
    }
    
    NSLog(@"%@",recipesString);
    
    self.foodLabel.text= recipesString;
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
