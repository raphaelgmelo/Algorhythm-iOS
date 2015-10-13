//
//  ViewController.m
//  Algorhythm
//
//  Created by Raphael Melo on 12/10/15.
//  Copyright © 2015 raphaelgmelo. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailsViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        // get the view controller instance
        PlaylistDetailsViewController *playlistDetailsController =
            (PlaylistDetailsViewController *)segue.destinationViewController;
        
        playlistDetailsController.segueLabelText = @"Yay! You pressed the button!";
        
    }
    
}

@end
