//
//  Conversion.m
//  Calculator
//
//  Created by Oliver Staton on 8/30/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "Conversion.h"

@interface Conversion ()

@end

@implementation Conversion

typedef enum
{
    E_CONVERT_NONE_SELECTED,
    E_CONVERT_INCHES_TO_CENTIMETERS,
    E_CONVERT_MILES_TO_METERS,
    E_CONVERT_MAX
} ConversionType_t;

-(IBAction)Convert:(id)sender
{
    float input = [inputTextField.text floatValue];
    float output = 0;
    ConversionType_t conversionType = currentConversionType;
    NSString *unit;
    
    switch(conversionType)
    {
        case E_CONVERT_NONE_SELECTED:
            output = 0;
            break;
        case E_CONVERT_INCHES_TO_CENTIMETERS:
            output = input * 2.54;
            unit = @"cm";
            break;
        case E_CONVERT_MILES_TO_METERS:
            output = input * 1609.34;
            unit= @"m";
            break;
        default:
            break;
    }
    
    if(conversionType == E_CONVERT_NONE_SELECTED)
    {
        outputLabel.text = [NSString stringWithFormat:@"Type Not Selected"];
    }
    else
    {
        outputLabel.text = [NSString stringWithFormat:@"%f %@", output, unit];
    }
}

-(IBAction)InchesToCentimeters:(id)sender
{
    currentConversionType = E_CONVERT_INCHES_TO_CENTIMETERS;
}

-(IBAction)MilesToMeters:(id)sender
{
    currentConversionType = E_CONVERT_MILES_TO_METERS;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    currentConversionType = E_CONVERT_NONE_SELECTED;
    
    inputTextField.keyboardType = UIKeyboardTypeDecimalPad;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
