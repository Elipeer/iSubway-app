//
//  MapView.m
//  SubWay Map
//
//  Created by Eli Peer on 7/15/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import "MapView.h"
#import "SWRevealViewController.h"
@interface MapView ()

@end

@implementation MapView
@synthesize mapview;

- (BOOL)prefersStatusBarHidden {return YES;}- (void)viewDidLoad {
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    sidebarButton.target = self.revealViewController;
    sidebarButton.action = @selector(revealToggle:);

    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    
    
        mapview.showsUserLocation=YES;
    
    [locationManager startUpdatingLocation];
    //Replace the methods below with your required method name.
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
        
    }
    
//    VERY IMPORTANT LINE OF CODE...LETS YOU ZOOM IN.
   [self.mapview setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}






-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:(NSCoder *)aDecoder];
    
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@",[locations lastObject]);
   
}



-(void)locationManager:(CLLocationManager *)manager
      didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location:%@", error);
}

-(void)dealloc
{
    
    self.mapview = nil;
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)thesearchBar
{
    
//    do stuff here
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
