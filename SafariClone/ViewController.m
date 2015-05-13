//
//  ViewController.m
//  SafariClone
//
//  Created by Husein Kareem on 5/13/15.
//  Copyright (c) 2015 Husein Kareem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate, UITextFieldDelegate, UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self goToURLString:@"http://www.mobilemakers.co"];
}

-(void)goToURLString:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self goToURLString:textField.text];

    return YES;
}

-(void)webViewDidStartLoad:(UIWebView *)webView {
    [self.spinner startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.spinner stopAnimating];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    UIAlertView *alert = [UIAlertView new];
    alert.title = @"Load Failed!";
    alert.message = error.localizedDescription;

    [alert addButtonWithTitle:@"Dismiss"];
    [alert addButtonWithTitle:@"Go home!"];
    alert.delegate = self;
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [self goToURLString:@"http://www.mobilemakers.co"];
    }
}

@end
