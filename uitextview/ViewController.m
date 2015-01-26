//
//  ViewController.m
//  uitextview
//
//  Created by shiyu wang on 1/26/15.
//  Copyright (c) 2015 shiyu wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonArray;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)taped:(UIButton *)sender {
    [self.textView.textStorage addAttribute:NSForegroundColorAttributeName
                                      value:sender.backgroundColor
                                      range:self.textView.selectedRange];
}

- (IBAction)Outline:(UIButton *)sender {
    [self.textView.textStorage addAttribute:NSStrokeWidthAttributeName
                                      value:@5
                                      range:self.textView.selectedRange];
}

- (IBAction)UnOutline:(id)sender {
    [self.textView.textStorage addAttribute:NSStrokeWidthAttributeName
                                      value:@0
                                      range:self.textView.selectedRange];
}

@end
