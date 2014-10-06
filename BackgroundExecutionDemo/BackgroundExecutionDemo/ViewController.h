
//
//  ViewController.h
//  BackgroundExecutionDemo
//
//  Created by Aron Aperauch on 10/1/14.
//  Copyright (c) 2014 Aron Aperauch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *counterLabel;
@property (strong, nonatomic) IBOutlet UIButton *startButton;
- (void)updateCounter;
- (void)pauseCounter;
- (void)startCounter;
- (void)insertNewObjectForFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler;
@end

