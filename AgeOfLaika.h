//
//  AgeOfLaika.h
//  Calculator
//
//  Created by Oliver Staton on 8/30/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgeOfLaika : UIViewController
{
    IBOutlet UITextField *humanYears;
    IBOutlet UILabel *dogYears;
    IBOutlet UIButton *convert;
    IBOutlet UISegmentedControl *dogSize;
}

-(IBAction)Convert:(id)sender;

@end
