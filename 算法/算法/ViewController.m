//
//  ViewController.m
//  算法
//
//  Created by felix on 2017/6/16.
//  Copyright © 2017年 forest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self scheme0];
//    [self scheme1];
//    [self scheme2];
    [self scheme3];
}

- (void)scheme0 {
    NSArray *datas = @[@10,@2,@45,@32,@78,@3,@(-1),@33,@701,@31,@17];
    if (datas.count <= 0) {
        return;
    }
    NSInteger max = [datas[0] integerValue];
    NSInteger min = [datas[0] integerValue];
    for (NSInteger index = 1; index < datas.count; index++) {
        if (max < [datas[index] integerValue]) {
            max = [datas[index] integerValue];
        }
        if (min > [datas[index] integerValue]) {
            min = [datas[index] integerValue];
        }
    }
    NSLog(@"max=%ld,min=%ld",max,min);
}

- (void)scheme1 {
    NSArray *datas = @[@10,@2,@45,@32,@78,@3,@(-1),@33,@701,@31,@17];
    NSMutableArray *mdatas = [NSMutableArray new];
    [mdatas addObjectsFromArray:datas];
    NSInteger max;
    NSInteger min;
    if (datas.count <= 0) {
        return;
    }
    if (datas.count == 1) {
        min = max = [datas[0] integerValue];
    }
    for (NSInteger index = 0; index < datas.count; ) {
        NSNumber *temp;
        if (index+1 >= datas.count) {
            break;
        }
        if ([mdatas[index] integerValue] < [mdatas[index+1] integerValue]) {
            temp = mdatas[index];
            mdatas[index] = mdatas[index+1];
            mdatas[index + 1] = mdatas[index];
        }//N/2
        index+=2;
    }
    
    max = [mdatas[0] integerValue];
    min = [mdatas[1] integerValue];
    for (NSInteger index =2; index < mdatas.count;) {
        if (index>= mdatas.count) {
            break;
        }
        if (max < [mdatas[index] integerValue]) {
            max = [mdatas[index] integerValue];
        }
        if (index+1 >= mdatas.count) {
            break;
        }
        if (min > [mdatas[index+1] integerValue]) {
            min = [mdatas[index+1] integerValue];
        }
        index+=2;
    }//n/2 * 2
    NSLog(@"max=%ld,min=%ld",(long)max,(long)min);
}

- (void)scheme2 {
    NSArray *datas = @[@10,@2,@45,@32,@78,@3,@(-1),@33,@701,@31,@17];
    NSInteger max;
    NSInteger min;
    if (datas.count <= 0) {
        return;
    }
    if (datas.count == 1) {
        min = max = [datas[0] integerValue];
    }
    if (datas.count ==2) {
        if (datas[0] > datas[1]) {
            max = [datas[0] integerValue];
            min = [datas[1] integerValue];
        }else{
            max = [datas[1] integerValue];
            min = [datas[0] integerValue];
        }
    }
    max = [datas[0] integerValue];
    min = [datas[1] integerValue];
    for (NSInteger index =0; index <datas.count;) {
        NSInteger tempMax;
        NSInteger tempMin;
        if (index+1 >= datas.count) {
            if (max < [datas[index] integerValue]) {
                max = [datas[index] integerValue];
            }
            if (min > [datas[index] integerValue]) {
                min = [datas[index] integerValue];
            }
            break;
        }
        if ([datas[index] integerValue] > [datas[index+1] integerValue]) {
            tempMax = [datas[index] integerValue];
            tempMin = [datas[index +1] integerValue];
        }else{
            tempMax = [datas[index +1] integerValue];
            tempMin = [datas[index] integerValue];
        }
        if (max < tempMax) {
            max = tempMax;
        }
        if (min > tempMin) {
            min = tempMin;
        }
        index+=2;
    }
    NSLog(@"max=%ld,min=%ld",(long)max,(long)min);
}

- (void)scheme3 {
    NSArray *datas = @[@10,@2,@45,@32,@78,@3,@(-1),@33,@701,@31,@17];
}

- (void)quickSort {
    NSArray *datas = @[@49,@38,@65,@97,@76,@13,@27,@49,];

}

//(max, min)search(arr, b ,e) // b 是起点，e是重点下标
//{
//    if(e -b < 1) {
//        if (arr[b] < arr[e]) {
//            return (arr[e],arr[b]);
//        }else{
//            return (arr[b],arr[e]);
//        }
//    }
//    (maxL, minL) = search(arr, b, b+(e-b)/2);
//    (maxR, minR) = Search(arr, b+(e-b)/2+1, e);
//    
//    if (maxL > maxR) {
//        maxV = maxL;
//    }else{
//        maxV = maxR;
//    }
//    
//    if (minL < minR) {
//        minV = minL;
//    }else{
//        minV = minR;
//    }
//    return (maxV, minV);
//}

@end
