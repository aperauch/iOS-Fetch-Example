//
//  ViewController.m
//  BackgroundExecutionDemo
//
//  Created by Aron Aperauch on 10/1/14.
//  Copyright (c) 2014 Aron Aperauch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int x = 0;
bool count = YES;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonMethod:(id)sender {
        [self updateCounter];
    }

- (void)updateCounter {
    if (count) {
        x++;
        NSString *strValue = [@(x) stringValue];
        self.counterLabel.text = strValue;
        NSLog(@"COUNTER:  %d", x);
        [self performSelector:@selector(updateCounter) withObject:self afterDelay:1.0];
    }
}

- (void)pauseCounter {
    NSLog(@"Paused counter.");
    count = NO;
}

- (void)startCounter {
    NSLog(@"Started counter.");
    count = YES;
    [self updateCounter];
}

- (void)insertNewObjectForFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    NSLog(@"Fetch was performed.");
    
    count = YES;
    [self updateCounter];
    
    //At the end of the fetch, invoke the completion handler.
    completionHandler(UIBackgroundFetchResultNewData);
}

@end
