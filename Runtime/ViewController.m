//
//  ViewController.m
//  Runtime
//
//  Created by changcai on 17/4/11.
//  Copyright © 2017年 changcai. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Student *stu = [Student new];
    [stu performSelector:@selector(eat)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
