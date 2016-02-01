//
//  ViewController.m
//  PostFacebook
//
//  Created by Aland Kawa on 13/10/2015.
//  Copyright © 2015 Aland Kawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)PostToFacebook:(UIButton *)sender {
    mySLComposerSheet = [[SLComposeViewController alloc] init];
    mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [mySLComposerSheet setInitialText:[NSString stringWithFormat:@""]];
    [mySLComposerSheet addImage:ImageView.image];
    [self presentViewController:mySLComposerSheet animated:YES completion:NULL];
}

-(IBAction)segmentButton:(id)sender {
    if (segmentedController.selectedSegmentIndex == 0) {
        Text.text = @"#import <UIKit/UIKit.h> \n #import <Accounts/Accounts.h> \n #import <Social/Social.h> \n\n @interface ViewController : UIViewController { \n\n IBOutlet UITextView *Text; \n SLComposeViewController *mySLComposerSheet; \n IBOutlet UIImageView *ImageView; \n } \n\n -(IBAction)PostToFacebook:(UIButton *)sender; \n\n @end ";
        
    }
    if (segmentedController.selectedSegmentIndex == 1) {
        Text.text = @"#import \"ViewController.h\" \n\n @interface ViewController () \n\n @end \n\n @implementation ViewController \n\n\n -(IBAction)PostToFacebook:(UIButton *)sender { \n mySLComposerSheet = [[SLComposeViewController alloc] init]; \n\n mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook]; \n\n [mySLComposerSheet setInitialText:[NSString stringWithFormat:@""]]; \n\n mySLComposerSheet addImage:ImageView.image]; \n\n [self presentViewController:mySLComposerSheet animated:YES completion:NULL]; \n\n } \n @end";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
