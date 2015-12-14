//
//  ViewController.m
//  User2
//
//  Created by elliott chavis on 12/4/15.
//  Copyright (c) 2015 Robco. All rights reserved.
//

#import "ViewController.h"


static NSString *userObjectKey = @"USRuserObjectKey";


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self loadUserObject];
    
    if(!self.userObject)
        self.userObject = [[User alloc] init];
    
        [self setUserValues];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if (textField.tag == 1) {
    
        
        NSLog(@"emailTextField: %@", textField.text);
        self.userObject.email = textField.text;
        [self.emailTextField resignFirstResponder];
    }
    else if (textField.tag == 0)
    {
        NSLog(@"nameTextField: %@", textField.text);
        self.userObject.name = self.nameTextField.text;

        [self.nameTextField resignFirstResponder];
    }

    
    
    return YES;
    
}



- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if (textField.tag == 1) {
        
        self.userObject.email = self.emailTextField.text;
        [self saveUserObject];
        NSLog(@"saving emailTextField: %@", self.userObject.email);
        [self.emailTextField resignFirstResponder];
    }
    else if (textField.tag == 0)
    {
        
        self.userObject.name = self.nameTextField.text;
        [self saveUserObject];
        [self.nameTextField resignFirstResponder];
    }
    
    
    
    return YES;


    
}

- (void)saveUserObject
{
    NSData *userObjectData = [NSKeyedArchiver archivedDataWithRootObject:self.userObject];
    [[NSUserDefaults standardUserDefaults] setObject:userObjectData forKey:userObjectKey];
}

- (void)loadUserObject
{
    NSData *userObjectData = [[NSUserDefaults standardUserDefaults] objectForKey:userObjectKey];
    
    if(userObjectData)
        self.userObject = [NSKeyedUnarchiver unarchiveObjectWithData:userObjectData];
}

- (void)setUserValues
{
    self.nameTextField.tag = 0;
    self.emailTextField.tag = 1;

    self.nameTextField.text = self.userObject.name;
    self.emailTextField.text = self.userObject.email;
    
}











@end
