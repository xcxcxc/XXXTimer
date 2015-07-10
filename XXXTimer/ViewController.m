//
//  ViewController.m
//  XXXTimer
//
//  Created by xc on 15/7/9.
//  Copyright (c) 2015年 xxx. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	// Do any additional setup after loading the view, typically from a nib.
	UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
	[button setBackgroundColor:[UIColor yellowColor]];
	[button setTitle:@"push" forState:UIControlStateNormal];
	[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	button.frame = CGRectMake(100.0, 100.0, 100.0, 100.0);
	[button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
}



- (void)push {
	ViewController2 *vc2 = [[ViewController2 alloc] init];
	[self.navigationController pushViewController:vc2 animated:YES];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}




@end
