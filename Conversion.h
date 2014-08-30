//
//  Conversion.h
//  Calculator
//
//  Created by Oliver Staton on 8/30/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import <UIKit/UIKit.h>

int currentConversionType;

@interface Conversion : UIViewController
{
    IBOutlet UITextField *inputTextField;
    IBOutlet UILabel *outputLabel;
    IBOutlet UIButton *convert;
    IBOutlet UIButton *inchesToCentimeters;
    IBOutlet UIButton *milesToMeters;
}

-(IBAction)Convert:(id)sender;
-(IBAction)InchesToCentimeters:(id)sender;
-(IBAction)MilesToMeters:(id)sender;

@end
