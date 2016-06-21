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
    self.beerNames = [[NSMutableArray alloc] initWithObjects: @"Stout", @"Lager", @"Pale Ale", nil];
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
    //cell.imgBeer.image   = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
