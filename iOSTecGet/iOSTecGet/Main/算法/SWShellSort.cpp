//
//  SWShellSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/7/31.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWShellSort.hpp"
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

void PrintList3(SqlList &L){
    
    for (int i=0; i<L.length; i++) {
        printf("%4d",L.data[i]);
    }
    printf("\n");
}

/*
   (又称缩小增量排序)
  通过实验,大量本表现出，平均时间复杂度N^1.3
 */

void shellSort(){
    
    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5;// 总计三个元素
    L.data[3]=4;
    L.data[4]=1;
    L.length = 5;
    int gap = L.length;
    while (gap>1) {
        gap = gap/3 + 1;
        for (int i=gap; i<gap; i+=gap) {
            int current = L.data[i];
            int preIndex = i-gap;
            while (preIndex >=0 && L.data[preIndex]>current) {
                L.data[i] = L.data[preIndex];
                preIndex -= gap;
            }
            L.data[preIndex+gap] = current;
        }
    }
    
    PrintList3(L);
}


