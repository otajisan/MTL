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
    _webView = [[UIWebView alloc] init];
    _webView.frame = self.view.bounds;
    _webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _webView.scalesPageToFit = YES;
    [self.view addSubview:_webView];
    //リクエストの生成
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mtdev.jp/wordpress/"]];
    [_webView loadRequest:request];
}

// ぐるぐる
-(void)webViewDidStartLoad:(UIWebView*)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

// ぐるぐるを消す
-(void)webViewDidFinishLoad:(UIWebView*)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
