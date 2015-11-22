//
//  ViewController.h
//  SubWay Map
//
//  Created by Eli Peer on 5/4/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import <StoreKit/StoreKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate, ADBannerViewDelegate>{
    
    
    IBOutlet UIBarButtonItem *sidebarButton;
    IBOutlet UISegmentedControl *segment;
}

-(IBAction)setmap:(id)sender;

@property (strong, nonatomic) IBOutlet ADBannerView *ads;

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

@end

