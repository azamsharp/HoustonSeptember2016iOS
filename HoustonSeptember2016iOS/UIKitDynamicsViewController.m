//
//  UIKitDynamicsViewController.m
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/17/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "UIKitDynamicsViewController.h"

@interface UIKitDynamicsViewController ()

@end

@implementation UIKitDynamicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *purpleView = [[UIView alloc]init];
    purpleView.backgroundColor = [UIColor purpleColor];
    purpleView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview: purpleView];
    
    // red view
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(50, 600, 100, 20);
    [self.view addSubview:redView];
    
    animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    gravity = [[UIGravityBehavior alloc] initWithItems:@[purpleView]];
    gravity.gravityDirection = CGVectorMake(0, 1);
    
    collision = [[UICollisionBehavior alloc] initWithItems:@[purpleView]];
    
    snap = [[UISnapBehavior alloc] initWithItem:purpleView snapToPoint:CGPointMake(200, 0)];
    
    CGPoint rightEdge = CGPointMake(redView.frame.origin.x + redView.frame.size.width, redView.frame.origin.y);
    
    [collision addBoundaryWithIdentifier:@"Barrier" fromPoint:redView.frame.origin toPoint:rightEdge];
    
    collision.translatesReferenceBoundsIntoBoundary = YES;
    
    [animator addBehavior:snap];
    
    [animator addBehavior:gravity];
   // [animator addBehavior:collision];
    
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
