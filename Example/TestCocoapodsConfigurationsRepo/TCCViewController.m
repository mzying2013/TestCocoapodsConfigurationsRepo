//
//  TCCViewController.m
//  TestCocoapodsConfigurationsRepo
//
//  Created by mzying2013 on 09/24/2019.
//  Copyright (c) 2019 mzying2013. All rights reserved.
//

#import "TCCViewController.h"

@interface TCCViewController ()

@end

@implementation TCCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [UILabel new];
    label.text = @"wa";
    
    NSLog(@"%@",label.text);
    
    label.text = @"wahaha";
    
    NSLog(@"%@",label.text);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
