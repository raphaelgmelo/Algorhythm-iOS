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
    
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        //which view bring us here?
        UIImageView *playlistImageView = (UIImageView *) [sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]){
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            // get the view controller instance
            PlaylistDetailsViewController *playlistDetailsController =
            (PlaylistDetailsViewController *)segue.destinationViewController;
            
            playlistDetailsController.playlist = [[Playlist alloc] initWithIndex:index];
        }
        
    }
    
}
- (IBAction)showPlaylistDetails:(id)sender {
    
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
}

@end
