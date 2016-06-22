//
//  HomeViewController.m
//  Practica02
//
//  Created by Christian Barragan on 19/06/16.
//  Copyright © 2016 Christian Barragan. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *beerNames;
@property NSMutableArray *beerColors;

@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.beerNames = [[NSMutableArray alloc] initWithObjects:
                      @"2 Light Lager",
                      @"3 Pilsner",
                      @"4 Hefeweizen",
                      @"6 American Pale Ale",
                      @"7 Gueze",
                      @"10 Extra Special Bitter",
                      @"13 English Strong Ale",
                      @"17 Red Ale",
                      @"22 Dunkel",
                      @"24 Porter",
                      @"30 Stout",
                      @"38 Imperial Stout",
                      nil];
    self.beerColors = [[NSMutableArray alloc] initWithObjects:
                       @"2_lightLager.png",
                       @"3_pilsner.png",
                       @"4_hefeweizen.png",
                       @"6_americanPaleAle.png",
                       @"7_gueze.png",
                       @"10_extraSpecialBitter.png",
                       @"13_englishStrongAle.png",
                       @"17_redAle.png",
                       @"22_dunkel.png",
                       @"24_porter.png",
                       @"30_stout.png",
                       @"38_imperialStout.png",
                       nil];
}


/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.beerNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellBeers *cell = (cellBeers *)[tableView dequeueReusableCellWithIdentifier:@"cellBeers"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellBeers" bundle:nil] forCellReuseIdentifier:@"cellBeers"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellBeers"];
    }
    //Fill cell with info from arrays
    cell.lblBeer.text       = self.beerNames[indexPath.row];
    cell.imgBeer.image   = [UIImage imageNamed:self.beerColors[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < 2)
    {
        self.lblTobBanner.textColor = [UIColor blackColor];
    }
    else
    {
        self.lblTobBanner.textColor = [UIColor whiteColor];
    }
    self.lblTobBanner.text = self.beerNames[indexPath.row];
    self.lblTobBanner.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:self.beerColors[indexPath.row]]];
}

@end
