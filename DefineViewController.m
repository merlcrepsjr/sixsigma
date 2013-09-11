//
//  DefineViewController.m
//  sixsigme
//
//  Created by Merl Creps Jr on 7/17/13.
//  Copyright (c) 2013 Merl J Creps Jr. All rights reserved.
//

#import "DefineViewController.h"

@interface DefineViewController ()

@end

@implementation DefineViewController
@synthesize htmlContent;

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

void LoadDefineHTMLFiles(NSString * htmlFileName, UIWebView * webView){
    
    NSString * fpath = [[NSBundle mainBundle]pathForResource:htmlFileName ofType:@"html"];
    
    //CREATE URL
    NSURL * fileurl = [NSURL fileURLWithPath:fpath isDirectory:NO];
    
    //CREATE URL REQUEST
    NSURLRequest * request = [[NSURLRequest alloc] initWithURL:fileurl];
    
    //LOAD THE URL REQUEST
    [webView loadRequest:request];
    
}



- (IBAction)history:(id)sender {
    LoadDefineHTMLFiles(@"history", htmlContent);
}

- (IBAction)define:(id)sender {
    LoadDefineHTMLFiles(@"definitions", htmlContent);
}

- (IBAction)dmaic:(id)sender {
    LoadDefineHTMLFiles(@"dmaic", htmlContent);
}

- (IBAction)project:(id)sender {
    LoadDefineHTMLFiles(@"project", htmlContent);
}

- (IBAction)problem:(id)sender {
    LoadDefineHTMLFiles(@"problem", htmlContent);
}

- (IBAction)teams:(id)sender {
    LoadDefineHTMLFiles(@"teams", htmlContent);
}
@end
