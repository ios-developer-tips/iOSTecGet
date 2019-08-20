//
//  SWChooseSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/7/31.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWChooseSort.hpp"
#include<iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

#define MaxSize 50
typedef  int ElemType;
typedef struct {
    
    ElemType data[MaxSize];
    int length;
}SqlList;

void swapData(SqlList &L, int x, int y){ // 交换两个变数
    
    int temp = L.data[x];
    L.data[x] = L.data[y];
    L.data[y] = temp;
}

void PrintList4(SqlList &L){
    
    for (int i=0; i<L.length; i++) {
        printf("%4d",L.data[i]);
    }
    printf("\n");
}

void chooseSortData(){
    
    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5;// 总计三个元素
    L.data[3]=4;
    L.data[4]=1;
    L.data[5]=9;
    L.data[6]=6;
    L.length = 7;
    
    for (int i=0; i<L.length - 1; i++) {
        int min = i;
        for (int j=i+1; j<L.length; j++) { // 走访未排序的数组
            if (L.data[j] < L.data[min]) { // 找到目前最小值
                min = j; // 记录最小值
            }
        }
        swapData(L, i, min);
    }
    
    PrintList4(L);
}
