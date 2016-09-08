//
//  ViewController.m
//  collectionData
//
//  Created by ankur on 14/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *number;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *cellNIb = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    [self.CollectionView registerNib:cellNIb forCellWithReuseIdentifier:@"Cell"];
    // Do any additional setup after loading the view, typically from a nib.
    number = [NSArray arrayWithObjects:@"1",@"2",@"3" ,nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return number.count;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    //cell.lbl1.textColor = [UIImage imageNamed:[Image objectAtIndex:indexPath.row]];
    cell.lbl1.text = [number objectAtIndex:indexPath.row];
    
    return cell;
}
@end
