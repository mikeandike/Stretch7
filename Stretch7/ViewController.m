//
//  ViewController.m
//  Stretch7
//
//  Created by Michael Sacks on 5/7/15.
//  Copyright (c) 2015 Michael Sacks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger minutes;

@property (nonatomic, assign) NSInteger seconds;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.minutes = 2;
    self.seconds = 15;
    [self decreaseSecond];
    
}

-(void)decreaseSecond{
    if (_seconds > 0) {
        NSLog(@"Minutes: %ld.  Seconds: %ld", _minutes, _seconds);
        _seconds--;
        [self performSelector:@selector(decreaseSecond) withObject:nil afterDelay:0.999];
    }
    else if (_minutes > 0){
        NSLog(@"Minutes: %ld.  Seconds: %ld", _minutes, _seconds);
        _minutes--;
        _seconds = 59;
        [self performSelector:@selector(decreaseSecond) withObject:nil afterDelay:0.999];
    }
    else{
        NSLog(@"Timer Complete!");
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
