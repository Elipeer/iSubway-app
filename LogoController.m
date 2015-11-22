//
//  LogoController.m
//  SubWay Map
//
//  Created by Eli Peer on 7/16/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import "LogoController.h"
#import "SWRevealViewController.h"
@interface LogoController ()

@end
bool isTapped;

@implementation LogoController
@synthesize WebView,lab;
- (BOOL)prefersStatusBarHidden {return YES;}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    sidebarButton.target = self.revealViewController;
    sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    
    isTapped=NO;
    WebView.hidden = YES;
    BackButton.hidden = YES;
    WebView.scalesPageToFit = YES;
    control.hidden = NO;

   // we may just quit on the activity indicator, or maybe theres a better way to do this.
    [WebView addSubview:act];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
}
//????
-(void)loading{
    if (!WebView.loading) {
        act.hidden = YES;
        [act stopAnimating];
    }else
        [act startAnimating];
    
    }

-(IBAction)BackButtonACT:(id)sender{
    
    WebView.hidden = YES;
    BackButton.hidden = YES;
    control.hidden = NO;
}
-(IBAction)segment:(id)sender{
    
    
}


-(IBAction)logo1:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        
    
    WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t1cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    isTapped = YES;
    }
    
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=1&date=7/20/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}


-(IBAction)logo2:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t2cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=2&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logo3:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        
    WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t3cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    //// replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=3&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logo4:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t4cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=4&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logo5:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t5cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/NoScheduledAdvisory.aspx?faultstringerror%20#20007--Trip%20not%20possible"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logo6:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t6cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=6&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logo7:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/t7cur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=7&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoA:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tacur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=A&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoB:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tbcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    //// replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=B&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;}
-(IBAction)logoC:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tccur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/NoScheduledAdvisory.aspx?faultstringerror%20#20007--Trip%20not%20possible"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoD:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tdcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=D&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoE:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tecur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=E&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoF:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tfcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=F&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoG:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tgcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/NoScheduledAdvisory.aspx?faultstringerror%20#20007--Trip%20not%20possible"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoJ:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tjcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/NoScheduledAdvisory.aspx?faultstringerror%20#20007--Trip%20not%20possible"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoL:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tlcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=L&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;}
-(IBAction)logoM:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tmcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=M&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoN:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tncur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=N&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoQ:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tqcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=Q&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoR:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/trcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=R&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;}
-(IBAction)logoSIR:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/sircur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/routeStatusResult.aspx?tag=SIR&date=7/21/2015&time=&method=getstatus4"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}
-(IBAction)logoZ:(id)sender{
    if (control.selectedSegmentIndex == 0) {
        WebView.hidden = NO;
    NSURL *url = [NSURL URLWithString:@"http://web.mta.info/nyct/service/pdf/tjcur.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    BackButton.hidden = NO;
    [WebView loadRequest:request];
    }
    // replace with delays.
    else if (control.selectedSegmentIndex == 1) {
        WebView.hidden = NO;
        NSURL *url = [NSURL URLWithString:@"http://travel.mtanyct.info/serviceadvisory/NoScheduledAdvisory.aspx?faultstringerror%20#20007--Trip%20not%20possible"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        BackButton.hidden = NO;
        [WebView loadRequest:request];
        isTapped = YES;
        
    }
    //must put in.
    control.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
