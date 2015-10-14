//
//  ViewController.m
//  Algorhythm
//
//  Created by Raphael Melo on 12/10/15.
//  Copyright © 2015 raphaelgmelo. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailsViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    
    self.playlistImageView0.image = playlist.playlistIcon;
    
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
        
        playlistDetailsController.playlist = [[Playlist alloc] initWithIndex:0];
        
    }
    
}
- (IBAction)showPlaylistDetails:(id)sender {

    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
}

@end
