//
//  User.m
//  User2
//
//  Created by elliott chavis on 12/4/15.
//  Copyright (c) 2015 Robco. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if(self) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _email = [aDecoder decodeObjectForKey:@"email"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.email forKey:@"email"];

    
}

@end
