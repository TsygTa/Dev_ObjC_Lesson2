//
//  MyItem.m
//  Dev_ObjC_Lesson2
//
//  Created by Tatiana Tsygankova on 12.05.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "MyItem.h"

@implementation MyItem
- (instancetype) initWithLabel:(NSString*)label andImageName:(NSString*)name {
    self = [super init];
    if(self) {
        self.label = label;
        self.imageName = name;
    }
    return self;
}

@end
