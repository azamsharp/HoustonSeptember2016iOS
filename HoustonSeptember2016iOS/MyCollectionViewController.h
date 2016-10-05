//
//  MyCollectionViewController.h
//  HoustonSeptember2016iOS
//
//  Created by Mohammad Azam on 10/5/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
{
    
}

@property (nonatomic,weak) IBOutlet UICollectionView *collectionView;

@end
