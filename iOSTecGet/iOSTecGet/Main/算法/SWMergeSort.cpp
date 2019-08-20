//
//  SWMergeSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/8/1.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWMergeSort.hpp"
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

int min(int x,int y){
    return x < y? x : y;
}
//template<typename T>
// 迭代
void merge_sort(int arr[],int len){
    int *a  = arr;
    int *b = (int *)malloc(len *sizeof(int));
    int seg,start;
    for (seg = 1; seg < len; seg += seg) {
        for (start = 0; start < len; start += seg*2) {
            int low = start, mid = min(start + seg,len), high = min(start+seg*2,len);
            int k = low;
            int start1 = low, end1 = mid;
            int start2 = mid, end2 = high;
            while (start1 < end1 && start2 < end2) {
                b[k++] = a[start1] < a[start2] ? a[start1++] : a[start2++];
            }
            while (start1 < end1) {
                b[k++] = a[start1++];
            }
            while (start2 < end2) {
                b[k++] = a[start2++];
            }
        }
        int *temp = a;
        a = b;
        b = temp;
    }
    
    if (a != arr) {
        int i;
        for (i = 0; i < len; i++) {
            b[i] = a[i];
        }
        b=a;
    }
    
    for(int i=0;i<len;i++){
        printf("-----%d********%d",b[i],a[i]);
    }
    
    free(b);
}
// 递归
// 归并排序
//void mergeSortData(){
//
//    // 初始化数据
//    SqlList L; // 顺序表的名称
//    // 手动为顺序表赋值
//    L.data[0]=3;
//    L.data[1]=2;
//    L.data[2]=5;// 总计三个元素
//    L.data[3]=4;
//    L.data[4]=1;
//    L.length = 5;
//
//    //
//
//}

void testMerge_sortData(){
    
    // 初始化数据
    SqlList L; // 顺序表的名称
    // 手动为顺序表赋值
    L.data[0]=3;
    L.data[1]=2;
    L.data[2]=5; // 总计三个元素
    L.data[3]=4;
    L.data[4]=9;
    L.length = 5;
    merge_sort(L.data, L.length);
}


