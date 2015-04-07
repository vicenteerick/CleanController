//
//  TableViewCell.m
//  TableTest
//
//  Created by Erick Santos on 4/5/15.
//  Copyright (c) 2015 Erick Santos. All rights reserved.
//

#import "UserViewCell.h"
#import "User.h"

@interface UserViewCell()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *identityLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageUser;

@end

@implementation UserViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)fillCell:(User*)user{
    
    self.nameLabel.text = user.name;
    self.identityLabel.text = user.identity;
    self.imageUser.image = [UIImage imageNamed:user.imageName];
    
    [self imageCornerRounded];
    
}

-(void)imageCornerRounded{
    self.imageUser.layer.cornerRadius = self.imageUser.bounds.size.height/2.0;
    self.imageUser.layer.masksToBounds = YES;
    self.imageUser.clipsToBounds = YES;
}

@end
