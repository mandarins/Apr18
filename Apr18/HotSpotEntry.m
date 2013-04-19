//
//  HotspotEntry.m
//  Apr18
//
//  Created by Computerlab on 4/18/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import "HotSpotEntry.h"

@implementation HotSpotEntry

- ( id ) init : (NSString * )withString
{
    self = [super init];
    
    if ( withString == nil ) {
        return self;
    }
    NSArray * columns = [withString componentsSeparatedByString:@","];
    
    self.shape = columns[0];
    self.name = columns[1];
    self.hs_id = columns[2];
    self.address = columns[3];
    self.city =  columns[4];
    self.zip =  columns[5];
    self.phone = columns[6];
    self.type = columns[7];
    self.url = columns[8];
    return self;
}

@end
