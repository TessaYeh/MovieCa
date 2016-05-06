//
//  EventTableView.h
//  Movie
//
//  Created by Rona_Yeh on 2016/5/3.
//  Copyright © 2016年 Rona_Yeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventTableView : UITableViewController<UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *eventMutableArray;

@end
