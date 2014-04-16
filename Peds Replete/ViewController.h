//
//  ViewController.h
//  Peds Replete
//
//  Created by Alex Hoang on 4/14/14.
//  Copyright (c) 2014 Grand Rounds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *weightLabel;
    IBOutlet UILabel *fluidLabel;
    NSString *stack;
    float fluids;
    
    
}
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)remove:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)calculate:(id)sender;

@end
