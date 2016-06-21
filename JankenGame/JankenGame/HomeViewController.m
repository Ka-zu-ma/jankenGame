//
//  HomeViewController.m
//  JankenGame
//
//  Created by 宮崎数磨 on 2016/06/22.
//  Copyright © 2016年 Miyazaki Kazuma. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _aiteLabel.text = @"";
    _kekkaLabel.text = @"";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tappedGuButton:(id)sender {
    
    _messageLabel.text = @"じゃんけん、ぽん!";
    _chokiButton.hidden = YES;
    _paButton.hidden = YES;
    
    srand(time(nil));
    NSInteger jankenNumber;
    jankenNumber = rand() % 3;
    
    if (jankenNumber == 0) {
        
        _aiteLabel.text = @"グー";
        _kekkaLabel.text = @"あいこで...";
        
        _chokiButton.hidden = NO;
        _paButton.hidden = NO;
        
    }
    
    if (jankenNumber == 1) {
        
        _aiteLabel.text = @"チョキ";
        _kekkaLabel.text = @"あなたの勝ち!";
        
        _guButton.enabled = NO;
        _againButton.enabled = YES;
        
    }
    if (jankenNumber == 2) {
        
        _aiteLabel.text = @"パー";
        _kekkaLabel.text = @"あなたの負け!";
        
        _guButton.enabled = NO;
        _againButton.hidden = NO;
        
    }
    
}

- (IBAction)tappedChokiButton:(id)sender {
    
    _messageLabel.text=@"じゃんけん、ぽん！";
    _guButton.hidden=YES;
    _paButton.hidden=YES;
    
    srand(time(nil));
    NSInteger jankenNumber;
    jankenNumber = rand()% 3;
    
    if(jankenNumber==0){
        
        _aiteLabel.text = @"グー";
        _kekkaLabel.text = @"あなたの負け！";
        _chokiButton.enabled = NO;
        _againButton.hidden = NO;
    }
    
    if(jankenNumber == 1){
        
        _aiteLabel.text=@"チョキ";
        _kekkaLabel.text=@"あいこで..";
        _guButton.hidden = NO;
        _paButton.hidden = NO;
    }
    
    if (jankenNumber == 2) {
        
        _aiteLabel.text=@"パー";
        _kekkaLabel.text=@"あなたの勝ち！";
        _chokiButton.enabled = NO;
        _againButton.hidden = NO;
    }
    
}

- (IBAction)tappedPaButton:(id)sender {
    
    
    _messageLabel.text=@"じゃんけん、ぽん！";
    _guButton.hidden=YES;
    _chokiButton.hidden=YES;
    
    srand(time(nil));
    NSInteger jankenNumber;
    jankenNumber = rand()% 3;
    
    if (jankenNumber == 0) {
        self.aiteLabel.text=@"グー";
        self.kekkaLabel.text=@"あなたの勝ち！";
        _paButton.enabled = NO;
        _againButton.hidden = NO;
    }
    
    if (jankenNumber==1) {
        
        self.aiteLabel.text=@"チョキ";
        self.kekkaLabel.text=@"あなたの負け！";
        _paButton.enabled = NO;
        _againButton.hidden = NO;
    }
    
    if (jankenNumber == 2) {
        
        self.aiteLabel.text=@"パー";
        self.kekkaLabel.text=@"あいこで...";
        _guButton.hidden = NO;
        _chokiButton.hidden = NO;
        
    }
    
}

- (IBAction)tappedAgainButton:(id)sender {
    
    _messageLabel.text=@"じゃんけん...";
    _guButton.hidden = NO;
    _chokiButton.hidden = NO;
    _paButton.hidden = NO;
    _againButton.hidden = YES;
    
    _guButton.enabled = YES;
    _chokiButton.enabled = YES;
    _paButton.enabled = YES;
    
    _kekkaLabel.text=@"";
    _aiteLabel.text=@"";

    
}
@end
