//
//  MapView.h
//  SubWay Map
//
//  Created by Eli Peer on 7/15/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface MapView : UIViewController <CLLocationManagerDelegate>{
    MKMapView *mapview;
       CLLocationManager *locationManager;
    IBOutlet UIBarButtonItem *sidebarButton;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;

@end
