//
//  DefineViewController.h
//  sixsigme
//
//  Created by Merl Creps Jr on 7/17/13.
//  Copyright (c) 2013 Merl J Creps Jr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DefineViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *htmlContent;

- (IBAction)history:(id)sender;
- (IBAction)define:(id)sender;
- (IBAction)dmaic:(id)sender;
- (IBAction)project:(id)sender;
- (IBAction)problem:(id)sender;
- (IBAction)teams:(id)sender;

@end
