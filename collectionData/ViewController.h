//
//  ViewController.h
//  collectionData
//
//  Created by ankur on 14/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
@interface ViewController : UIViewController <UICollectionViewDelegate , UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *CollectionView;

@end

