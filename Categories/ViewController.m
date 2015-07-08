//
//  ViewController.m
//  Categories
//
//  Created by SivajeeBattina on 6/4/15.
//  Copyright (c) 2015 Paradigmcreatives. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string1=@"ABC123";
    string1.inputString = @"Hello World";
    NSLog(@"%@",string1.inputString);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
