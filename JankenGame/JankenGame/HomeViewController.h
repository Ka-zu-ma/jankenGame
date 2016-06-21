//
//  HomeViewController.h
//  JankenGame
//
//  Created by 宮崎数磨 on 2016/06/22.
//  Copyright © 2016年 Miyazaki Kazuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *aiteLabel;
@property (weak, nonatomic) IBOutlet UILabel *kekkaLabel;
@property (weak, nonatomic) IBOutlet UIButton *guButton;
@property (weak, nonatomic) IBOutlet UIButton *chokiButton;
@property (weak, nonatomic) IBOutlet UIButton *paButton;
@property (weak, nonatomic) IBOutlet UIButton *againButton;

- (IBAction)tappedGuButton:(id)sender;
- (IBAction)tappedChokiButton:(id)sender;
- (IBAction)tappedPaButton:(id)sender;
- (IBAction)tappedAgainButton:(id)sender;



@end
