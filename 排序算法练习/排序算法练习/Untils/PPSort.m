//
//  PPSort.m
//  排序算法练习
//
//  Created by Kity on 16/5/19.
//  Copyright © 2016年 Kity_Pei. All rights reserved.
//

#import "PPSort.h"

@implementation PPSort

//选择排序
+ (NSArray *)selectionSortBy:(NSMutableArray *)array
{
    for (int i = 0; i < array.count-1; i++) {
        for (int j = 1; j < array.count; j++) {
            if ([array[i] integerValue] > [array [j] integerValue]) {
                int temp = [[array objectAtIndex:i] intValue];
                array[i] = array[j];
                array[j] = [NSNumber numberWithInt:temp];
            }
        }
    }
    return array;
}

//冒泡排序
+ (NSArray *)bubbleSortBy:(NSMutableArray *)array
{
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array.count -i - 1; j++) {
            if ([array[j+1] integerValue] < [array[j] integerValue]) {
                int temp = [[array objectAtIndex:j] intValue];
                array[j] = array[j+1];
                array[j+1] = [NSNumber numberWithInt:temp];
            }
        }
    }
    return array;
}

//快速排序
+ (NSArray *)quickSortBy:(NSMutableArray *)array
{
    return array;
}

//插入排序
+ (NSArray *)insertionSortBy:(NSMutableArray *)array
{
    for (int i = 1 ; i < array.count; i++) {
        int temp = [array[i] intValue];
        for (int j = i -1 ; j >= 0 && temp < [array[j] integerValue]; j--) {
            array[j+1] = array[j];
            array[j] = [NSNumber numberWithInt:temp];
        }
    }
    return array;
}

//折半插入排序
+ (NSArray *)binaryInsertionSortBy:(NSMutableArray *)array
{
    return array;
}

//希尔排序
+ (NSArray *)shellSortBy:(NSMutableArray *)array
{
    return array;
}

//堆排序
+ (NSArray *)heapSortBy:(NSMutableArray *)array
{
    return array;
}

+(void)swapWithData:(NSMutableArray *)aData index1:(NSInteger)index1 index2:(NSInteger)index2{
         NSNumber *tmp = [aData objectAtIndex:index1];
         [aData replaceObjectAtIndex:index1 withObject:[aData objectAtIndex:index2]];
        [aData replaceObjectAtIndex:index2 withObject:tmp];
}

@end
