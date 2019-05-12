//
//  MyTableViewCell.m
//  Dev_ObjC_Lesson2
//
//  Created by Tatiana Tsygankova on 12.05.2019.
//  Copyright © 2019 Tatiana Tsygankova. All rights reserved.
//

#import "MyTableViewCell.h"

@interface MyTableViewCell ()

@property (nonatomic, strong) UIImageView *image;
@property (nonatomic, strong) UILabel *label;

@end

@implementation MyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self) {
        self.image = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.image setContentMode:UIViewContentModeScaleAspectFit];
        [self.contentView addSubview:self.image];
        
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        self.label.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:self.label];
    }
    return self;
}

- (void) layoutSubviews {
    self.label.frame = CGRectMake(10, 10, self.bounds.size.width-20, 20);
    self.image.frame = CGRectMake(10, 40, self.bounds.size.width-20, 260);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) config:(UIImage*)image withLabel:(NSString*)label {
    [self.image setImage:image];
    [self.label setText:label];
}

@end
