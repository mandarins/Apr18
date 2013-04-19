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
    self.objId = columns[0];
    self.shape = columns[1];
    self.name = columns[2];
    self.hs_id = columns[3];
    self.address = columns[4];
    self.city =  columns[5];
    self.zip =  columns[6];
    self.phone = columns[7];
    self.type = columns[8];
    self.url = columns[9];
    return self;
}

@end
