//
//  HotspotEntry.h
//  Apr18
//
//  Created by Computerlab on 4/18/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotSpotEntry : NSObject
@property NSString * shape;
@property NSString * name;
@property NSString * hs_id;
@property NSString * address;
@property NSString * city;
@property NSString * zip;
@property NSString * phone;
@property NSString * type;
@property NSString * url;

- ( id ) init : (NSString * )withString;

@end
