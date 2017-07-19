//
//  FirstViewController.m
//  Stock manager
//
//  Created by Renán Díaz Reyes on 4/27/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "FirstViewController.h"
#import "Timer.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) Timer *timer;
@property (nonatomic) BOOL estaDetenido;
@property (nonatomic, strong) NSArray *buttonLabels;
@end

@implementation FirstViewController

- (void)viewDidLoad
{
    self.estaDetenido = YES;
    self.timer = [[Timer alloc] init];
    self.buttonLabels = @[@"Sound", @"Light"];
    [self.button setTitle:[self.buttonLabels objectAtIndex:self.estaDetenido] forState:UIControlStateNormal];
}

- (IBAction)buttonTouched
{
    if (self.estaDetenido) {
        [self.timer startTimer];
        self.timeLabel.text = @"0.000 s";
        self.distanceLabel.text = @"0 m";
    } else {
        [self.timer stopTimer];
        double elapsedTime = [self.timer timeElapsedInSeconds];
        double totalDistance = [self distanceWithTimeDifference:elapsedTime];
        self.timeLabel.text = [NSString stringWithFormat:@"%.3f s", elapsedTime];
        self.distanceLabel.text = [NSString stringWithFormat:@"%.0f m", totalDistance];
    }
    self.estaDetenido = !self.estaDetenido;
    [self.button setTitle:[self.buttonLabels objectAtIndex:self.estaDetenido] forState:UIControlStateNormal];
}

#define SPEED_OF_LIGHT 299792458
#define SPEED_OF_SOUND 340.29

- (double)distanceWithTimeDifference:(double)timeDifference
{
    double lightMinusSquared = pow(SPEED_OF_LIGHT, -2);
    double soundMinusSquared = pow(SPEED_OF_SOUND, -2);
    double sumOfLightAndSound = lightMinusSquared + soundMinusSquared;
    double squaredTime = pow(timeDifference, 2);
    double squaredDistance = squaredTime / sumOfLightAndSound;
    return sqrt(squaredDistance);
}

@end
