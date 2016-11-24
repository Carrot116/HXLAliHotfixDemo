//
//  ViewController.m
//  HXLAliHotfixDemo
//
//  Created by Carrot on 2016/11/24.
//  Copyright © 2016年 Carrot. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:3 repeats:YES block:^(NSTimer * _Nonnull timer) {
        double value = [self testValueForKey:@"key"];
        NSString* msg = [NSString stringWithFormat:@"返回值%f",value];
        NSLog(@"返回值:%@", msg);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        double value = [self testValueForKey:@"key"];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            NSString* msg = [NSString stringWithFormat:@"返回值%f",value];
//            NSLog(@"返回值:%@", msg);
//        });
//    });
}


- (NSDictionary*)testDict{
    NSDictionary* dict = @{@"key1":@(1),
                           @"key2":@(2.3),
                           @"key3":@"key3",};
    return dict;
}


- (double)testValueForKey:(NSString*)key{
    double retValue = [[self testDict][key] doubleValue];
    return retValue;
    
//    double retValue = 0;
//    id obj = [self testDict][key];
//    if (obj) {
//        retValue = [obj doubleValue];
//    } else {
//        id obj1 = [self testDict][@"key2"];
//        retValue = [obj1 doubleValue];
//    }
//    return retValue;
}
@end
