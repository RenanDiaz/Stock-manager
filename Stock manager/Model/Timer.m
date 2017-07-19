//
//  Timer.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 6/7/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Timer.h"

@implementation Timer

- (id) init {
    self = [super init];
    if (self != nil) {
        self.start = nil;
        self.end = nil;
    }
    return self;
}

- (void) startTimer {
    self.start = [NSDate date];
}

- (void) stopTimer {
    self.end = [NSDate date];
}

- (double) timeElapsedInSeconds {
    return [self.end timeIntervalSinceDate:self.start];
}

- (double) timeElapsedInMilliseconds {
    return [self timeElapsedInSeconds] * 1000.0f;
}

- (double) timeElapsedInMinutes {
    return [self timeElapsedInSeconds] / 60.0f;
}

@end
