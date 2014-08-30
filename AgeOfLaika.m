//
//  AgeOfLaika.m
//  Calculator
//
//  Created by Oliver Staton on 8/30/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "AgeOfLaika.h"

@interface AgeOfLaika ()

@end

@implementation AgeOfLaika

typedef enum
{
    E_LARGE_DOG,
    E_SMALL_DOG,
    E_MAX
} DogSize_t;

-(IBAction)Convert:(id)sender
{
    float input = [humanYears.text floatValue];
    float output = 0;
    
    switch(dogSize.selectedSegmentIndex)
    {
        case E_SMALL_DOG:
            output = input * 5.11;
            break;
        case E_LARGE_DOG:
            output = input * 7.25;
            break;
        default:
            break;
    }
    
    dogYears.text = [NSString stringWithFormat:@"%.2f", output];
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
    dogSize.selectedSegmentIndex = E_SMALL_DOG;
    humanYears.keyboardType = UIKeyboardTypeDecimalPad;

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
