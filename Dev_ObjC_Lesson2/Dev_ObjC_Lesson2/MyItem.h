//
//  MyItem.h
//  Dev_ObjC_Lesson2
//
//  Created by Tatiana Tsygankova on 12.05.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyItem : NSObject
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *label;

- (instancetype) initWithLabel:(NSString*)label andImageName:(NSString*)name;
@end

NS_ASSUME_NONNULL_END
