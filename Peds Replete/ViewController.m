//
//  ViewController.m
//  Peds Replete
//
//  Created by Alex Hoang on 4/14/14.
//  Copyright (c) 2014 Grand Rounds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
   
    
    
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    stack = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }
    - (IBAction)one:(id)sender {
        [self addnumber:1];
    }
    - (IBAction)two:(id)sender {
        [self addnumber:2];
    }
    - (IBAction)three:(id)sender {
        [self addnumber:3];
    }
    - (IBAction)four:(id)sender {
        [self addnumber:4];
    }
    - (IBAction)five:(id)sender {
        [self addnumber:5];
    }
    - (IBAction)six:(id)sender {
        [self addnumber:6];
    }
    - (IBAction)seven:(id)sender {
        [self addnumber:7];
    }
    - (IBAction)eight:(id)sender {
        [self addnumber:8];
    }
    - (IBAction)nine:(id)sender {
        [self addnumber:9];
    }
    - (IBAction)zero:(id)sender {
        [self addnumber:0];
    }
    - (IBAction)remove:(id)sender {
        [self addnumber:-1];
    }
    - (IBAction)dot:(id)sender {
        [self addpoint];
    }
    - (IBAction)calculate:(id)sender {
        [self calc:stack];
    }
   /* - (IBAction) myEvent:(id)sender {
    ViewController *subClass = [[ViewController alloc] initWithNibName:@"YourXIB" bundle:nil];
    subClass.view.frame = self.view.frame;
    subClass.view.autoresizingMask = self.view.autoresizingMask;
    [self.view.superview addSubview:subClass.view];
    
    //ARC
    instanceVarSubClass = subClass;
    
    //NO ARC
    self.instanceVarSubClass = subClass;
    [subClass release];
    }*/


-(void)addnumber:(int)number{
    
    if(stack == NULL){
        stack = @"0";
    }
    
    if(number > -1){
        stack = [NSString stringWithFormat:@"%1$@%2$d", stack, number];
    }
    else if([stack length] > 0){
        NSRange length = [stack rangeOfString:stack];
        stack = [stack substringToIndex:NSMaxRange(length)-1 ];
    }
    else{
        stack = @"0";
    }
    [weightLabel setText:stack];
}

/*-(void)addpoint{
    stack = [NSString stringWithFormat:@"%1$@.", stack];
    [weightLabel setText:stack];
}*/

-(void)addpoint{
        static NSString *decVal =@".";
        NSRange range = [weightLabel.text rangeOfString:decVal];
        if (NSNotFound == range.location){
            stack = [NSString stringWithFormat:@"%1$@.", stack];
            [weightLabel setText:stack];
        }
    }


-(void)calc:(NSString*)stack{
    float weight= [stack floatValue];
    if(weight<=10){
        fluids = weight * 4;
    }
    else if(weight <=20){
        fluids=40+(weight-10)*2;
    }
    else{
    fluids=60+(weight-20);
    }
    fluidLabel.text= [NSString stringWithFormat:@"%.2f",fluids];
}


@end