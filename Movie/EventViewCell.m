//
//  EventViewCell.m
//  Movie
//
//  Created by Rona_Yeh on 2016/5/4.
//  Copyright © 2016年 Rona_Yeh. All rights reserved.
//

#import "EventViewCell.h"
#import "Masonry.h"


@implementation EventViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _movieImageView = [[UIImageView alloc] init];
        _movieTitle = [[UILabel alloc] init];
        _eventPosition = [[UILabel alloc] init];
        _eventTime = [[UILabel alloc] init];
        _memberCount = [[UILabel alloc] init];
        [self.contentView addSubview: _movieImageView];
        [self.contentView addSubview: _movieTitle];
        [self.contentView addSubview: _eventPosition];
        [self.contentView addSubview: _eventTime];
        [self.contentView addSubview: _memberCount];
    }
    return self;
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureWithJoinEvent:(JoinEvent *) joinEvent{
    self.movieTitle.text = joinEvent.title;
    self.eventPosition.text = joinEvent.position;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    self.eventTime.text = [dateFormatter stringFromDate:joinEvent.date];
    self.memberCount.text = joinEvent.memberCount;
    [self needsUpdateConstraints];
    [self updateConstraintsIfNeeded];
}

- (void)setConstraints {
    [self.movieImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).insets(UIEdgeInsetsMake(0, 0, 0, 0));
        make.height.mas_equalTo(300);
    }];
    [self.movieTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).with.offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-10);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(40);
    }];
    [self.eventPosition mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.movieTitle.mas_top).with.offset(5);
        make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-10);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(40);
    }];
    [self.eventTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView.mas_right).with.offset(10);
        make.top.equalTo(self.contentView.mas_top).with.offset(10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(40);
    }];
    [self.memberCount mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView.mas_right).with.offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(40);
    }];
}

- (void) updateConstraints {
    [self setConstraints];
    [super updateConstraints];
}

@end
