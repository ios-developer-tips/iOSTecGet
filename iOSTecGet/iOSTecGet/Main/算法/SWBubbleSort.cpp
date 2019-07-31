//
//  SWBubbleSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/7/30.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWBubbleSort.hpp"
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


void exchangeData(SqlList &L,int x,int y){

    int temp = L.data[x];
    L.data[x] = L.data[y];
    L.data[y] = temp;
}

void PrintList1(SqlList &L){

    for (int i=0; i<L.length; i++) {
        printf("%4d",L.data[i]);
    }
    printf("\n");
}

// 冒泡排序
void bubbleSortData(){
    
    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5;// 总计三个元素
    L.data[3]=4;
    L.data[4]=1;
    L.length = 5;
    
    int m=0;
    for (int i = 1; i<L.length; i++) {
        for (int j = 0; j<L.length-i; j++) {
            m++;
            if (L.data[j]>L.data[j+1]) {
                
                // 保证此方法之前已经声明过
                exchangeData(L, j, j+1);
            }
        }
    }
    printf("比较的次数是-----%d",m);
    PrintList1(L);
}

// 外层循环优化冒泡
void optimizeBubbleSortData(){
    
    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5;// 总计三个元素
    L.data[3]=4;
    L.data[4]=1;
    L.length = 5;
    int m=0;
    for (int i=1; i<L.length; i++) {
        bool flag = true;
        for (int j=0; j<L.length-1; j++) {
            m++;
            if (L.data[j]>L.data[j+1]) {
                exchangeData(L, j, j+1);
                flag = false;
            }
        }
        
        if (flag) {
            break;
        }
    }
    printf("比较的次数是-----%d",m);
    PrintList1(L);
}



