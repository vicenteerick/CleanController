//
//  TableDataSource.m
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import "TableDataSource.h"
#import "TableViewCell.h"

@interface TableDataSource ()

@property (nonatomic, strong) NSDictionary *cellForSectionDictionary;


@end

@implementation TableDataSource

- (id)initWithCellForSection:(NSDictionary*)cellForSectionDictionary andObjectsForCell:(NSDictionary*)objectsForCellDictionary{
    self = [super init];
    
    if (self) {
        self.cellForSectionDictionary = cellForSectionDictionary;
        self.objectsForCellDictionary = objectsForCellDictionary;
    }
    
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSString *sectionString = [NSString stringWithFormat:@"%ld",(long)section];
    
    NSArray *objects = [self.objectsForCellDictionary objectForKey:sectionString];
    
    return objects.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = [self identifierCellWithClass:[self.cellForSectionDictionary objectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.section]]];
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];

    NSArray *objects = [self.objectsForCellDictionary objectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.section]];
    
    [cell fillCell:[objects objectAtIndex:indexPath.row]];
    
    return cell;
}

-(NSString*)identifierCellWithClass:(id)object{
    return NSStringFromClass([object class]);
}

@end
