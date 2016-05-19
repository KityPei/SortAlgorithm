//
//  PPSort.h
//  排序算法练习
//
//  Created by Kity on 16/5/19.
//  Copyright © 2016年 Kity_Pei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PPSort : NSObject

//选择排序
+ (NSArray *)selectionSortBy:(NSMutableArray *)array;
//冒泡排序
+ (NSArray *)bubbleSortBy:(NSMutableArray *)array;
//快速排序
+ (NSArray *)quickSortBy:(NSMutableArray *)array;
//插入排序
+ (NSArray *)insertionSortBy:(NSMutableArray *)array;
//折半插入排序
+ (NSArray *)binaryInsertionSortBy:(NSMutableArray *)array;
//希尔排序
+ (NSArray *)shellSortBy:(NSMutableArray *)array;
//堆排序
+ (NSArray *)heapSortBy:(NSMutableArray *)array;


@end
