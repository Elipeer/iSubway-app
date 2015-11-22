//
//  NoiAds.h
//  SubWay Map
//
//  Created by Eli Peer on 7/24/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import <iAd/iAd.h>
@interface NoiAds : UIViewController  <ADBannerViewDelegate>{
    IBOutlet UIButton *removeAdsButton;
    IBOutlet ADBannerView *Ad;

    

}
- (IBAction)purchase:(SKProduct *)product;
- (IBAction)restore;
- (IBAction)tapsRemoveAds;
- (IBAction)but;
@property (nonatomic, assign) BOOL areAdsRemoved;
@end
