//
//  RQShineLabelDemoVC.m
//  CRAnimation
//
//  Created by Bear on 17/4/24.
//  Copyright © 2017年 BearRan. All rights reserved.
//

#import "RQShineLabelDemoVC.h"
#import "RQShineLabel.h"

@interface RQShineLabelDemoVC ()
@property (strong, nonatomic) RQShineLabel *shineLabel;
@property (strong, nonatomic) NSArray *textArray;
@property (assign, nonatomic) NSUInteger textIndex;
@property (strong, nonatomic) UIImageView *wallpaper1;
@property (strong, nonatomic) UIImageView *wallpaper2;
@end

@implementation RQShineLabelDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
    [self addTopBarWithTitle:@"RQShineLabel"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.shineLabel shine];
}

- (void)createUI
{
    _textArray = @[
                   @"For something this complicated, it’s really hard to design products by focus groups. A lot of times, people don’t know what they want until you show it to them.",
                   @"We’re just enthusiastic about what we do.",
                   @"We made the buttons on the screen look so good you’ll want to lick them."
                   ];
    _textIndex  = 0;
    
    self.wallpaper1 = ({
        UIImageView *imageView =  [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"S0015_wallpaper1"]];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.frame = self.view.bounds;
        imageView;
    });
    [self.view addSubview:self.wallpaper1];
    
    self.wallpaper2 = ({
        UIImageView *imageView =  [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"S0015_wallpaper2"]];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.frame = self.view.bounds;
        imageView.alpha = 0;
        imageView;
    });
    [self.view addSubview:self.wallpaper2];
    
    self.shineLabel = ({
        RQShineLabel *label = [[RQShineLabel alloc] initWithFrame:CGRectMake(16, 16, 320 - 32, CGRectGetHeight(self.view.bounds) - 16)];
        label.numberOfLines = 0;
        label.text = [self.textArray objectAtIndex:self.textIndex];
        label.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:24.0];
        label.backgroundColor = [UIColor clearColor];
        [label sizeToFit];
        label.center = self.view.center;
        label;
    });
    [self.view addSubview:self.shineLabel];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    if (self.shineLabel.isVisible) {
        [self.shineLabel fadeOutWithCompletion:^{
            [self changeText];
            [UIView animateWithDuration:2.5 animations:^{
                if (self.wallpaper1.alpha > 0.1) {
                    self.wallpaper1.alpha = 0;
                    self.wallpaper2.alpha = 1;
                }
                else {
                    self.wallpaper1.alpha = 1;
                    self.wallpaper2.alpha = 0;
                }
            }];
            [self.shineLabel shine];
        }];
    }
    else {
        [self.shineLabel shine];
    }
}

- (void)changeText
{
    self.shineLabel.text = self.textArray[(++self.textIndex) % self.textArray.count];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
