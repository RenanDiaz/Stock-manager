//
//  Timer.h
//  Stock manager
//
//  Created by Renán Díaz Reyes on 6/7/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Timer : NSObject
@property (nonatomic, strong) NSDate *start;
@property (nonatomic, strong) NSDate *end;

- (void) startTimer;
- (void) stopTimer;
- (double) timeElapsedInSeconds;
- (double) timeElapsedInMilliseconds;
- (double) timeElapsedInMinutes;
@end
