//
//  DataManager.h
//  Movie
//
//  Created by Rona_Yeh on 2016/4/29.
//  Copyright © 2016年 Rona_Yeh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

@property (nonatomic, strong) NSMutableArray *eventMutableArray;
+ (instancetype) sharedInstance ;
+ (void)setEvent;
@end
