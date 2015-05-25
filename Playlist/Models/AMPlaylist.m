//
//  AMPlaylist.m
//  Playlist
//
//  Created by ag07 on 24/05/15.
//  Copyright (c) 2015 AM. All rights reserved.
//

#import "AMPlaylist.h"
#import "AMMusicLibrary.h"

@implementation AMPlaylist

#pragma mark - init

- (instancetype)initWithIndex:(NSUInteger )index {
    self = [super init];
    if (self) {
        AMMusicLibrary *lib = [AMMusicLibrary new];
        NSArray *playlist = lib.library;
        NSDictionary *dic = [playlist objectAtIndex:index];
        
        _title = [dic objectForKey:kTitle];
        _playlistDescription = [dic objectForKey:kDescription];
        _imageIcon = [UIImage imageNamed:[dic objectForKey:kIcon]];
        _imageIconLarge = [UIImage imageNamed:[dic objectForKey:kLargeIcon]];
        _artists = [NSArray arrayWithArray:[dic objectForKey:kArtists]];
        _backgroundColor = [self rgbFromDictionary:[dic objectForKey:kBackgroundColor]];
        
    }
    return self;
}

#pragma mark - color 

- (UIColor *)rgbFromDictionary:(NSDictionary *)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
@end
