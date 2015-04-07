//
//  User.m
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import "User.h"

@implementation User

-(id)initWithName:(NSString*)name identity:(NSString*)identity andImageName:(NSString*)imageName{
    self = [super init];
    
    if (self) {
        self.name = name;
        self.identity = identity;
        self.imageName = imageName;
    }
    
    return self;
}

@end
