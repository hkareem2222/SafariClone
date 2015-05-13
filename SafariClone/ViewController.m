//
//  ViewController.m
//  SafariClone
//
//  Created by Husein Kareem on 5/13/15.
//  Copyright (c) 2015 Husein Kareem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http://www.mobilemakers.co";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}

@end
