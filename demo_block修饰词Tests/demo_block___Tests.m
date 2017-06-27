//
//  demo_block___Tests.m
//  demo_block修饰词Tests
//
//  Created by  huzhongyin on 17/6/27.
//  Copyright © 2017年 LanGe. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface demo_block___Tests : XCTestCase

@end

@implementation demo_block___Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
