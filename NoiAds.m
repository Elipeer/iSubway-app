//
//  NoiAds.m
//  SubWay Map
//
//  Created by Eli Peer on 7/24/15.
//  Copyright (c) 2015 elipeer. All rights reserved.
//
#import "ViewController.h"
#import "NoiAds.h"
#import "LogoController.h"
@interface NoiAds () <SKProductsRequestDelegate, SKPaymentTransactionObserver>


@end

@implementation NoiAds
@synthesize areAdsRemoved;
- (void)viewDidLoad {

    
    areAdsRemoved = [[NSUserDefaults standardUserDefaults] boolForKey:@"areAdsRemoved"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    //this will load wether or not they bought the in-app purchase
    
    if(areAdsRemoved){
        [self.view setBackgroundColor:[UIColor redColor]];
        //if they did  buy it, set the background to blue, if your using the code above to set the background to blue, if your removing ads, your going to have to make your own code here
        Ad.hidden = YES;
        
        removeAdsButton.hidden = YES;
        removeAdsButton.enabled = NO;
        
    }
    Ad.hidden=NO;
    // Do additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)but{
      [self dismissViewControllerAnimated:YES completion:nil];    
}
- (BOOL)prefersStatusBarHidden {return YES;}



#define kRemoveAdsProductIdentifier @"com.elipeer.isubway"
- (IBAction)tapsRemoveAds{
    NSLog(@"User requests to remove ads");
    
    if([SKPaymentQueue canMakePayments]){
        NSLog(@"User can make payments");
        
        SKProductsRequest *productsRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:kRemoveAdsProductIdentifier]];
        productsRequest.delegate = self;
        [productsRequest start];
        
    }
    else{
        NSLog(@"User cannot make payments due to parental controls");
        //this is called the user cannot make payments, most likely due to parental controls
    }
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
    SKProduct *validProduct = nil;
    NSInteger count = [response.products count];
    if(count > 0){
        validProduct = [response.products objectAtIndex:0];
        NSLog(@"Products Available!");
        [self purchase:validProduct];
    }
    else if(!validProduct){
        NSLog(@"No products available");
        //this is called if your product id is not valid, this shouldn't be called unless that happens.
    }
}

- (IBAction)purchase:(SKProduct *)product{
    SKPayment *payment = [SKPayment paymentWithProduct:product];
    
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

- (IBAction) restore{
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    //this is called when the user restores purchases, you should hook this up to a button
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

- (void) paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue
{
    NSLog(@"received restored transactions: %lu", (unsigned long)queue.transactions.count);
    for(SKPaymentTransaction *transaction in queue.transactions){
        if(transaction.transactionState == SKPaymentTransactionStateRestored){
            //called when the user successfully restores a purchase
            NSLog(@"Transaction state -> Restored");
            
            [self doRemoveAds];
            [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
            break;
        }
    }
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions{
    for(SKPaymentTransaction *transaction in transactions){
        switch(transaction.transactionState){
            case SKPaymentTransactionStatePurchasing: NSLog(@"Transaction state -> Purchasing");
                //called when the user is in the process of purchasing, do not add any of your own code here.
                break;
            case SKPaymentTransactionStatePurchased:
                //this is called when the user has successfully purchased the package (Cha-Ching!)
                [self doRemoveAds]; //you can add your code for what you want to happen when the user buys the purchase here, for this tutorial we use removing ads
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                NSLog(@"Transaction state -> Purchased");
                break;
            case SKPaymentTransactionStateRestored:
                NSLog(@"Transaction state -> Restored");
                //add the same code as you did from SKPaymentTransactionStatePurchased here
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            case SKPaymentTransactionStateFailed:
                //called when the transaction does not finish
                if(transaction.error.code == SKErrorPaymentCancelled){
                    NSLog(@"Transaction state -> Cancelled");
                    //the user cancelled the payment ;(
                }
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                break;
            case SKPaymentTransactionStateDeferred:
                NSLog(@"fixed?");
                break;
        }
    }
}
- (void)doRemoveAds{
    [self.view setBackgroundColor:[UIColor grayColor]];
    Ad.hidden = NO;
    areAdsRemoved = YES;
    removeAdsButton.hidden = YES;
    removeAdsButton.enabled = NO;
    [[NSUserDefaults standardUserDefaults] setBool:areAdsRemoved forKey:@"areAdsRemoved"];
    //use NSUserDefaults so that you can load whether or not they bought it
    //it would be better to use KeyChain access, or something more secure
    //to store the user data, because NSUserDefaults can be changed.
    //You're average downloader won't be able to change it very easily, but
    //it's still best to use something more secure than NSUserDefaults.
    //For the purpose of this tutorial, though, we're going to use NSUserDefaults
    [[NSUserDefaults standardUserDefaults] synchronize];
}

bool isiAdOn;

#pragma mark iad delagate methods
-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0];
    
    [Ad setAlpha:0];
    
    [UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [Ad setAlpha:1];
    
    [UIView commitAnimations];
    
    
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
