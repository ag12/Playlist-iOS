//
//  AMPlaylistDetailViewController.m
//  Playlist
//
//  Created by ag07 on 23/05/15.
//  Copyright (c) 2015 AM. All rights reserved.
//

#import "AMPlaylistDetailViewController.h"

@interface AMPlaylistDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageViewCover;
@property (weak, nonatomic) IBOutlet UILabel *mainTitle;
@property (weak, nonatomic) IBOutlet UILabel *leadTitle;
@property (weak, nonatomic) IBOutlet UILabel *firstArtist;
@property (weak, nonatomic) IBOutlet UILabel *secondArtist;
@property (weak, nonatomic) IBOutlet UILabel *thirdArtist;

@end

@implementation AMPlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.playlist) {
        self.imageViewCover.image = self.playlist.imageIconLarge;
        self.imageViewCover.backgroundColor = self.playlist.backgroundColor;
        self.mainTitle.text = self.playlist.title;
        self.leadTitle.text = self.playlist.playlistDescription;
        self.firstArtist.text = [self.playlist.artists objectAtIndex:0];
        self.secondArtist.text = [self.playlist.artists objectAtIndex:1];
        self.thirdArtist.text = [self.playlist.artists objectAtIndex:2];
    }
}
@end