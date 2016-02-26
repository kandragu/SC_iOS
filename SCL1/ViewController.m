//
//  ViewController.m
//  SCL1
//
//  Created by Kandasamy, Rahunandan on 25/2/16.
//  Copyright © 2016 Kandasamy, Rahunandan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect rect = [[UIScreen mainScreen]bounds];
    self.view= [[UIView alloc]initWithFrame:rect];
    
    self.firstButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 80, 20)];
    [self.firstButton setTitle:@"firstButton" forState: UIControlStateNormal];
    
    [self.firstButton addTarget:self action:@selector(onFirstPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view setBackgroundColor: [UIColor grayColor]];
    [self.view addSubview:self.firstButton];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onFirstPressed:(id)sender{
    
    if( [_firstButton isEqual:sender]){
        [self.view setBackgroundColor: [UIColor greenColor]];
    }
}

@end
