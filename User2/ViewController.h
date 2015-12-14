//
//  ViewController.h
//  User2
//
//  Created by elliott chavis on 12/4/15.
//  Copyright (c) 2015 Robco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"


@interface ViewController : UIViewController <UITextFieldDelegate>{
    IBOutlet UITextField *nameTextField;
    IBOutlet UITextField *emailTextField;
}

@property (nonatomic, strong) User *userObject;
@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UITextField *emailTextField;



- (void)saveUserObject;
- (void)loadUserObject;
- (void)setUserValues;




@end
