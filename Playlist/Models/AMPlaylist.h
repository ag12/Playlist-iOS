//
//  AMPlaylist.h
//  Playlist
//
//  Created by ag07 on 24/05/15.
//  Copyright (c) 2015 AM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AMPlaylist : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *imageIcon;
@property (strong, nonatomic) UIImage *imageIconLarge;
@property (strong, nonatomic) NSArray *artists;
@property (strong, nonatomic) UIColor *backgroundColor;

- (instancetype)initWithIndex:(NSUInteger )index;
@end
