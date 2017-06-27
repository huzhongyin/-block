//
//  ViewController.m
//  demo_block修饰词
//
//  Created by  huzhongyin on 17/6/27.
//  Copyright © 2017年 LanGe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, copy) void(^myblock)();

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //1 __NSGlobalBlock__  全局block   存储在代码区（存储方法或者函数）
    void(^myBlock1)() = ^() {
        NSLog(@"我是老大");
    };
    
    NSLog(@"%@",myBlock1);
    
    
    //2 __NSStackBlock__  栈block  存储在栈区
    //block内部访问外部变量
    //block的本质是一个结构体
    int n = 5;
    void(^myBlock2)() = ^() {
        NSLog(@"我是老二%d", n);
    };
    NSLog(@"%@", myBlock2);
    
    
    
    
    //3 __NSMallocBlock__  堆block 存储在堆区  对栈block做一次copy操作
    void(^myBlock3)() = ^() {
        NSLog(@"我是老二%d", n);
    };
    NSLog(@"%@", [myBlock3 copy]);
    
    
    
    /*
     
     由以上三个例子可以看出当block没有访问外界的变量时,是存储在代码区,
     当block访问外界变量时时存储在栈区, 而此时的block出了作用域就会被释放
     以下示例:
     */
    [self test];//当此代码结束时,test函数中的所有存储在栈区的变量都会被系统释放, 因此如果属性的block是用assign修饰时  当再次访问时就会出现野指针访问.
    self.myblock();
    
    
}

- (void)test {
    int n = 5;
    [self setMyblock:^{
        NSLog(@"%d",n);
    }];
    NSLog(@"test--%@",self.myblock);
    
}



@end
