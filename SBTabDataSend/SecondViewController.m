//
//  SecondViewController.m
//  SBTabDataSend
//
//  Created by 真有 津坂 on 12/03/31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
//追加、Add
#import "AppDelegate.h"

@implementation SecondViewController
@synthesize myLabel1;
@synthesize myLabel2;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];


	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyLabel1:nil];
    [self setMyLabel2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//画面が表示される直前に実行される処理を書く。TabBarの場合、- (void)viewDidLoadに以下の処理を書くと正常に表示されない
- (void)viewWillAppear:(BOOL)animated
{
    //追加、Add
    //データを受け取って、ラベルに表示する
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    myLabel1.text = appDelegate.labelData1;
    myLabel2.text = appDelegate.labelData2;
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
