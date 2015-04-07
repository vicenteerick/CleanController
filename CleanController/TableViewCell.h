//
//  TableViewCell.h
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewCell.h"

@interface TableViewCell : UITableViewCell <ViewCell>

-(void)fillCell:(id)item;

@end
