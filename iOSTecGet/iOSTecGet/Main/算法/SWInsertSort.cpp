//
//  SWInsertSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/7/31.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWInsertSort.hpp"
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

void exchangeData1(SqlList &L,int x,int y){

    int temp = L.data[x];
    L.data[x] = L.data[y];
    L.data[y] = temp;
}

void PrintList2(SqlList &L){

    for (int i=0; i<L.length; i++) {
        printf("%4d",L.data[i]);
    }
    printf("\n");
}

// 在对比的时候不交换
void insertSortData(){

    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5;// 总计三个元素
    L.data[3]=4;
    L.data[4]=1;
    L.length = 5;
    for (int i=1; i<L.length; i++) {
        int current = L.data[i];
        int preIndex = i-1;
        while (preIndex >= 0 && L.data[preIndex]>current) {
            // 可以交换。因为current记录了最后一个值，所以这里使用向后移动思想
            L.data[preIndex+1] = L.data[preIndex];
            preIndex --;
        }
        L.data[preIndex+1] = current;
    }
    printf("在对比的时候不交换");
    PrintList2(L);
}

// 在对比的时候交换
void insertSortData1(){

    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5;// 总计三个元素
    L.data[3]=4;
    L.data[4]=1;
    L.length = 5;
    for (int i=1; i<L.length; i++) {
        for (int j=i-1; j>=0 && L.data[j]>L.data[j+1]; j--) {
            exchangeData1(L, j, j+1);
        }
    }
     printf("在对比的时候交换");
    PrintList2(L);
}
