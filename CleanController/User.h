//
//  User.h
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *identity;
@property(nonatomic, strong) NSString *imageName;

-(id)initWithName:(NSString*)name identity:(NSString*)identity andImageName:(NSString*)imageName;

@end
