//
//  About.h
//  SubWay Map
//
//  Created by Eli Peer on 7/23/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "SidebarViewController.h"
#import <MessageUI/MessageUI.h>
@interface AboutPage : UITableViewController <MFMailComposeViewControllerDelegate>{
    IBOutlet UIBarButtonItem *sidebarButton;
    
}
-(IBAction)ShowEmail:(id)sender;
@end
