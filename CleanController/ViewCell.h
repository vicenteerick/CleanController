//
//  ViewCell.h
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewCell <NSObject>
@required
-(void)fillCell:(id)item;

@end
