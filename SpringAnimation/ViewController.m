//
//  ViewController.m
//  SpringAnimation
//
//  Created by yangrui on 2017/9/11.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *orangeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    //
    
   /** 
    使用弹簧的描述时间曲线来执行动画 ,当dampingRatio == 1 时,动画会平稳的减速到最终的模型值,而不会震荡.
    小于1的阻尼比在达到完全停止之前会震荡的越来越多.
    
    如果你可以使用初始的 spring velocity 来 指定模拟弹簧末端的对象在加载之前移动的速度.
    他是一个单位坐标系统,其中2被定义为在一秒内移动整个动画距离.
    如果你在动画中改变一个物体的位置,你想在动画开始前移动到 100 pt/s 你会超过0.5,
    
    dampingRatio 阻尼
    velocity 速度
    10
    
    + (void)animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^ __nullable)(BOOL finished))completion NS_AVAILABLE_IOS(7_0);
    
    */
    
    
    [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        self.orangeView.y = 300;
        
    } completion:^(BOOL finished) {
        
    }];
    
    
}


@end
