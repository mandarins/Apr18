//
//  WifiHotSpots.m
//  Apr18
//
//  Created by Salvatore Lentini on 4/17/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import "WifiHotSpots.h"

@implementation WifiHotSpots

-(id) init {
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Wifi_Hotspot_Locations"
                                                     ofType:@"csv"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    rows = [content componentsSeparatedByString:@"\n"];
   
    NSLog(@"%@, number of rows %u",path, rows.count);
    
    for ( int n = 0; n < rows.count; n++) {
        NSString* row = [rows objectAtIndex:n];
        NSArray * columns = [row componentsSeparatedByString:@","];
    }
    return self;
}
@end
