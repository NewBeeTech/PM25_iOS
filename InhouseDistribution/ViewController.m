//
//  ViewController.m
//  InhouseDistribution
//
//  Created by Leiyou Who on 2/17/16.
//  Copyright © 2016 Leiyou Who. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
//    NSString *htmlFileString = [NSString stringWithContentsOfFile:htmlFile encoding: NSUTF8StringEncoding error:nil];
//    NSString *bundleJS= [[NSBundle mainBundle] pathForResource:@"bundle" ofType:@"js"];
//    NSString *bundleJSString = [NSString stringWithContentsOfFile:bundleJS encoding:NSUTF8StringEncoding error:nil];
//    
    
    NSURL *url = [NSURL URLWithString:@"http://www.chenkexin94.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(error);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
