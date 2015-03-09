//
//  EBMailButtonViewController.m
//  EmailButton
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EBMailButtonViewController.h"
#import <MessageUI/MessageUI.h>

@interface EBMailButtonViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation EBMailButtonViewController

- (IBAction)sendEmail:(id)sender {
    
    MFMailComposeViewController *mailViewController = [MFMailComposeViewController new];
    mailViewController.mailComposeDelegate = self;
    
    [mailViewController setSubject:@"Awesome Message"];
    [mailViewController setMessageBody:@"I am in the body" isHTML:NO];

    
    [self presentViewController:mailViewController animated:YES completion:nil];

    
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
