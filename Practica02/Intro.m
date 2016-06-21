//
//  Intro.m
//  Practica02
//
//  Created by Christian Barragan on 19/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Intro.h"

@interface Intro ()

@end

@implementation Intro
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.uiPageIndex];
    self.imgIntro.image = [UIImage imageNamed:maIntroImgs[self.uiPageIndex]];
    
    if (self.uiPageIndex == 2)
    {
        bTutorialEnded = YES;
    }
    
    if (YES == bTutorialEnded)
    {
        self.btnIntro.hidden = NO;
    }
}

/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/
- (IBAction)btnIntroPressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
