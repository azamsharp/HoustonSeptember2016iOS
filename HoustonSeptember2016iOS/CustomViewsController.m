//
//  CustomViewsController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/6/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "CustomViewsController.h"

@interface CustomViewsController ()

@end

@implementation CustomViewsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SwitchView *switchView = [[SwitchView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    switchView.backgroundColor = [UIColor greenColor];
    switchView.delegate = self; // this means that the ViewController will be listening to the events
    
    [self.view addSubview:switchView];
    
//    UIView *blueView = [[UIView alloc] init];
//    
//    blueView.frame = CGRectMake(0, 0, 300, 300);
//    blueView.center = self.view.center;
//    
//    blueView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:blueView];
//    
//    UIView *redView = [[UIView alloc] init];
//    redView.frame = CGRectMake(0, 0, 100, 100);
//    
//    CGFloat width = blueView.frame.size.width;
//    CGFloat height = blueView.frame.size.height;
//    
//    redView.center = CGPointMake(width/2, height/2);
//    
//    redView.backgroundColor = [UIColor redColor];
//    
//    [blueView addSubview:redView];
    
}

-(void) switchViewDidChangeStatus:(NSString *)status {
    
    if([status isEqualToString:@"ON"]) {
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor purpleColor];
    }
    
    self.outputLabel.text = status; 
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
