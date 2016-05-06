//
//  DataManager.m
//  Movie
//
//  Created by Rona_Yeh on 2016/4/29.
//  Copyright © 2016年 Rona_Yeh. All rights reserved.
//

#import "DataManager.h"
#import "JoinEvent.h"

@implementation DataManager

+ (instancetype) sharedInstance {
    static DataManager *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[DataManager alloc] init];
    });
    return shareInstance;
}

+ (void) setEvent{
    [self.sharedInstance setEvent];
}
- (instancetype) init {
    self = [super init];
    if (self) {
        _eventMutableArray = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void) setEvent{    
    for (int i = 0; i< 100; i++) {
        JoinEvent *object = [[JoinEvent alloc]init];
            NSString* title = [[NSString alloc] initWithFormat:@"%d", i];
            object.title = title;
            [self.eventMutableArray addObject:object];
        }
}


@end
