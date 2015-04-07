//
//  TableDataSource.h
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableDataSource : NSObject <UITableViewDataSource>
@property (nonatomic, strong) NSDictionary *objectsForCellDictionary;

- (id)initWithCellForSection:(NSDictionary*)cellForSectionDictionary andObjectsForCell:(NSDictionary*)objectsForCellDictionary;

@end
