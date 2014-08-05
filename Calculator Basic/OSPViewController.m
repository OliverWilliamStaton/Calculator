//
//  OSPViewController.m
//  Calculator Basic
//
//  Created by Oliver Staton on 8/4/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "OSPViewController.h"

@interface OSPViewController ()

@end

@implementation OSPViewController

// Helper function for when a number is selected
-(void)TrackSelectedNumber:(int)MyNumber
{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + MyNumber;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number1:(id)sender
{
    [self TrackSelectedNumber:1];
}

-(IBAction)Number2:(id)sender
{
    [self TrackSelectedNumber:2];
}

-(IBAction)Number3:(id)sender
{
    [self TrackSelectedNumber:3];
}

-(IBAction)Number4:(id)sender
{
    [self TrackSelectedNumber:4];
}

-(IBAction)Number5:(id)sender
{
    [self TrackSelectedNumber:5];
}

-(IBAction)Number6:(id)sender
{
    [self TrackSelectedNumber:6];
}

-(IBAction)Number7:(id)sender
{
    [self TrackSelectedNumber:7];
}

-(IBAction)Number8:(id)sender
{
    [self TrackSelectedNumber:8];
}

-(IBAction)Number9:(id)sender
{
    [self TrackSelectedNumber:9];
}

-(IBAction)Number0:(id)sender
{
    [self TrackSelectedNumber:0];
}

// Helper function for runnign calculations
-(void)RunningCalculation:(int)MyMethod
{
    if(RunningTotal == 0)
    {
        RunningTotal = SelectNumber;
    }
    else
    {
        switch(Method)
        {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
}

-(IBAction)Times:(id)sender
{

    [self RunningCalculation:Method];
    
    Method = 1;
    SelectNumber = 0;
}

-(IBAction)Divide:(id)sender
{
    [self RunningCalculation:Method];
    
    Method = 2;
    SelectNumber = 0;
}

-(IBAction)Subtract:(id)sender
{
    [self RunningCalculation:Method];
    
    Method = 3;
    SelectNumber = 0;
}

-(IBAction)Plus:(id)sender
{
    [self RunningCalculation:Method];
    
    Method = 4;
    SelectNumber = 0;
}

-(IBAction)Equals:(id)sender
{
    [self RunningCalculation:Method];
    
    Method = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%.2f", RunningTotal];
}

-(IBAction)AllClear:(id)sender
{
    Method = 0;
    RunningTotal = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"0"];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
