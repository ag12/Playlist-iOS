//
//  AMMusicLibrary.h
//  Playlist
//
//  Created by ag07 on 24/05/15.
//  Copyright (c) 2015 AM. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface AMMusicLibrary : NSObject
@property (strong, nonatomic) NSArray *library;

@end
