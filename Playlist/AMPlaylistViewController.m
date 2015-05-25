//
//  ViewController.m
//  Playlist
//
//  Created by ag07 on 23/05/15.
//  Copyright (c) 2015 AM. All rights reserved.
//

#import "AMPlaylistViewController.h"
#import "AMPlaylistDetailViewController.h"
#import "AMPlaylist.h"

@interface AMPlaylistViewController ()
@end

@implementation AMPlaylistViewController

#pragma mark - init 

- (void)viewDidLoad {
    [super viewDidLoad];
    for (NSUInteger i = 0; i < self.playlistImageViewCollection.count; i++) {
        AMPlaylist *playlist = [[AMPlaylist alloc] initWithIndex:i];
        UIImageView *imageView = self.playlistImageViewCollection[i];
        imageView.image = playlist.imageIcon;
        imageView.backgroundColor = playlist.backgroundColor;
    }
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]) {
        
        UIImageView *pImageView = (UIImageView *)[sender view];
        if ([self.playlistImageViewCollection containsObject:pImageView]) {
            NSUInteger index = [self.playlistImageViewCollection indexOfObject:pImageView];
            AMPlaylistDetailViewController *playlistDetailViewController = (AMPlaylistDetailViewController *)[segue destinationViewController];
            playlistDetailViewController.playlist = [[AMPlaylist alloc] initWithIndex:index];
        }
    }
}

#pragma mark - action

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}
@end