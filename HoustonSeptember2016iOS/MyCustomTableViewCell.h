//
//  MyCustomTableViewCell.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/18/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *nameLabel;
@property (nonatomic,weak) IBOutlet UIButton *counterButton; 

@end
