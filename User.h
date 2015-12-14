//
//  User.h
//  User2
//
//  Created by elliott chavis on 12/4/15.
//  Copyright (c) 2015 Robco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, assign) int friends;  

@end
