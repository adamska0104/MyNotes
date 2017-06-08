//
//  AddViewController.m
//  PresentationLayer
//
//  Created by adam on 2017/6/7.
//  Copyright © 2017年 ark. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textView.delegate = self;
    [self.textView becomeFirstResponder];
    self.textView.selectedRange = NSMakeRange(10, 0);
    self.textView.backgroundColor = [UIColor blueColor];
    //[self.textView setTintColor:[UIColor blueColor]];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
    NoteBL *bl = [[NoteBL alloc] init];
    Note *note = [[Note alloc] init];
    note.content = self.textView.text;
    note.date = [[NSDate alloc] init];
    NSMutableArray *resList = [bl createNote:note];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadViewNotification"
                                                        object:resList
                                                      userInfo:nil];
    
    [self.textView resignFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    NSLog(@"textViewShouldBeginEditing");
    //[self.textView becomeFirstResponder];
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    NSLog(@"textViewShouldEndEditing");
    
    
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    NSLog(@"textViewDidBeginEditing");
    
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    NSLog(@"textViewDidEndEditing");
    //[self.textView resignFirstResponder];
}

- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"textViewDidChange");
}

- (void)textViewDidChangeSelection:(UITextView *)textView {
    NSLog(@"textViewDidChangeSelection");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
