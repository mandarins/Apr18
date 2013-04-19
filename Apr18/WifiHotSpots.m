//
//  WifiHotSpots.m
//  Apr18
//
//  Created by Salvatore Lentini on 4/17/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import "WifiHotSpots.h"
#import "HotSpotEntry.h"

@implementation WifiHotSpots

-(id) init {
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Wifi_Hotspot_Locations"
                                                     ofType:@"csv"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    rows = [content componentsSeparatedByString:@"\n"];
   
    NSLog(@"%@, number of rows %u",path, rows.count);
    self.nyc = [[NSMutableDictionary alloc] init];
    int maxrow = 1250;
    // File must have embedded commas because count doesn't match actual
    // number of rows
    for ( int n = 0; n < maxrow; n++) {
        NSString* row = [rows objectAtIndex:n];
        HotSpotEntry * hse = [[HotSpotEntry alloc] init: row ];
        [self.nyc setObject: hse forKey: hse.hs_id ];
        NSLog(@"current row %u", n);
    }
    return self;
}
@end
