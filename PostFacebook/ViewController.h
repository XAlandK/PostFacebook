//
//  ViewController.h
//  PostFacebook
//
//  Created by Aland Kawa on 13/10/2015.
//  Copyright © 2015 Aland Kawa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <Social/Social.h>

@interface ViewController : UIViewController {
    IBOutlet UITextView *Text;
    IBOutlet UISegmentedControl *segmentedController;
    
    
    SLComposeViewController *mySLComposerSheet;
    IBOutlet UIImageView *ImageView;
}

-(IBAction)PostToFacebook:(UIButton *)sender;
-(IBAction)segmentButton:(id)sender;

@end

