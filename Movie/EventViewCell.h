//
//  EventViewCell.h
//  Movie
//
//  Created by Rona_Yeh on 2016/5/4.
//  Copyright © 2016年 Rona_Yeh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JoinEvent.h"

@interface EventViewCell : UITableViewCell

@property (nonatomic) UIImageView *movieImageView;
@property (nonatomic) UILabel *movieTitle;
@property (nonatomic) UILabel *eventPosition;
@property (nonatomic) UILabel *eventTime;
@property (nonatomic) UILabel *memberCount;
@property (nonatomic) UIImageView *hitLevelView;

- (void)configureWithJoinEvent:(JoinEvent *) joinEvent;

@end
