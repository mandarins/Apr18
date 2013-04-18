//
//  WifiHotSpots.h
//  Apr18
//
//  Created by Salvatore Lentini on 4/17/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WifiHotSpots : NSObject {
    NSArray* rows;
    //NSDictionary * nyc;
}
@property  NSDictionary * nyc;
- (id) init;
@end
