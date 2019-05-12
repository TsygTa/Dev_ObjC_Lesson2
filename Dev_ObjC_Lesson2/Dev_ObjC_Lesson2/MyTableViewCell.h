//
//  MyTableViewCell.h
//  Dev_ObjC_Lesson2
//
//  Created by Tatiana Tsygankova on 12.05.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
- (void) config:(UIImage*)image withLabel:(NSString*)label;
@end

NS_ASSUME_NONNULL_END
