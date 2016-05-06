//
//  JoinEvent.h
//  Movie
//
//  Created by Rona_Yeh on 2016/4/29.
//  Copyright © 2016年 Rona_Yeh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JoinEvent : NSObject
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *position;
@property (nonatomic) NSDate *date;
@property (nonatomic) int members;
@property (nonatomic) int quotaMembers;
@property (nonatomic) NSString *memberCount;

+ (instancetype)joinEvent;
@end
