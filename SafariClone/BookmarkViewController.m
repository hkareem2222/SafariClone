//
//  BookmarkViewController.m
//  SafariClone
//
//  Created by Husein Kareem on 5/14/15.
//  Copyright (c) 2015 Husein Kareem. All rights reserved.
//

#import "BookmarkViewController.h"

@interface BookmarkViewController ()

@property (weak, nonatomic) IBOutlet UILabel *bookmarkLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation BookmarkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.bookmarkLabel.text = self.bookmark1;
    NSString *myURLString = [NSString stringWithFormat:@"http://www.google.com/s2/favicons?domain=%@", self.bookmark1];
    NSURL *myURL=[NSURL URLWithString: myURLString];
    NSData *myData=[NSData dataWithContentsOfURL:myURL];
    UIImage *myImage=[[UIImage alloc] initWithData:myData];
    self.imageView.image = myImage;
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

@end
