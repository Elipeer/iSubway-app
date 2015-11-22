//
//  LogoController.h
//  SubWay Map
//
//  Created by Eli Peer on 7/16/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogoController : UIViewController{
    IBOutlet UIButton *BackButton;
    IBOutlet UISegmentedControl *control;
    
    IBOutlet UIButton *logos1;
    IBOutlet UIActivityIndicatorView *act;
     NSTimer *timer;
    IBOutlet UIBarButtonItem *sidebarButton;
}

@property (strong, nonatomic) IBOutlet UIWebView *WebView;

-(IBAction)logo1:(id)sender;
-(IBAction)logo2:(id)sender;
-(IBAction)logo3:(id)sender;
-(IBAction)logo4:(id)sender;
-(IBAction)logo5:(id)sender;
-(IBAction)logo6:(id)sender;
-(IBAction)logo7:(id)sender;
-(IBAction)logoA:(id)sender;
-(IBAction)logoB:(id)sender;
-(IBAction)logoC:(id)sender;
-(IBAction)logoD:(id)sender;
-(IBAction)logoE:(id)sender;
-(IBAction)logoF:(id)sender;
-(IBAction)logoG:(id)sender;
-(IBAction)logoJ:(id)sender;
-(IBAction)logoL:(id)sender;
-(IBAction)logoM:(id)sender;
-(IBAction)logoN:(id)sender;
-(IBAction)logoQ:(id)sender;
-(IBAction)logoR:(id)sender;

-(IBAction)logoSIR:(id)sender;
-(IBAction)logoZ:(id)sender;

-(IBAction)BackButtonACT:(id)sender;

-(IBAction)segment:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *lab;

@end
