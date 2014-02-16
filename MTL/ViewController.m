//
//  ViewController.m
//  MTL
//
//  Created by 田地 将也 on 2014/02/16.
//  Copyright (c) 2014年 田地 将也. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // WebViewを生成
    webView_ = [[UIWebView alloc] init];
    webView_.frame = self.view.bounds;
    webView_.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView_.scalesPageToFit = YES;
    [self.view addSubview:webView_];
    //リクエストの生成
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mtdev.jp/wordpress/"]];
    [webView_ loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
