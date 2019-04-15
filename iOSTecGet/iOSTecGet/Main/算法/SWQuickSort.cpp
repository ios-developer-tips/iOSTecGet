//
//  SWQuickSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#define MaxSize 50
typedef int ElemType;
// 静态分配
typedef struct{
    
    ElemType data[MaxSize];
    int length;
}SqList;

#define InitSize 100
// 动态分配
typedef struct {
    
    ElemType data;
    int capacity;// 最大容量
    int length;
}SeqList;

/**
 插入顺序表方法,位置从1开始
 
 @param L 被插入的顺序表
 @param i 插入的位置
 @param e 插入的元素
 @return 是否成功的返回值
 */
bool ListInsert(SqList &L,int i,ElemType e){
    
    // 插入的位置不合适
    if (i<1 || i>L.length+1) {
        return false;
    }
    
    // 表的长度大于最大长度
    if (L.length>MaxSize) {
        return false;
    }
    
    for (int j=L.length; j>=i; j--) {
        
        L.data[j]=L.data[j-1];
    }
    L.data[i-1]=e;
    L.length++;
    return true;
}

bool ListDelete(SqList &L,int i){
    
    if (i<1 || i>L.length) {
        return false;
    }
    
    for (int j=i; j<L.length; j++) {
        
        L.data[j-1]=L.data[j];
    }
    L.length--;
    return true;
}

// 查找成功，返回位置，位置从1开始
int LocateElem(SqList L,ElemType e){
    
    int i;
    for(i=0;i<L.length;i++) {
        
        if (L.data[i]==e) {
            
            return i+1;
        }
    }
    return 0;
}
void PrintList(SqList &L){
    
    for (int i=0; i<L.length; i++) {
        printf("%4d",L.data[i]);
    }
    printf("\n");
}
void QuickSortData() {
    
    // 初始化测试数据
    SqList L;// 顺序表的名称
    bool ret;// 查看返回值
    // 首先手动在顺序表中赋值
    L.data[0]=1;
    L.data[1]=2;
    L.data[2]=3;
    L.length=3;//总计三个元素
    ret = ListInsert(L, 2, 60);
    if (ret) {
        printf("插入成功\n");
        PrintList(L);
    }
    
    ret = ListDelete(L, 2);
    if (ret) {
        
        printf("删除元素成功\n");
        PrintList(L);
    }else{
        printf("删除失败");
    }
    
    int result = LocateElem(L, 2);
    if (result) {
        
        printf("查找成功\n");
        printf("元素位置为 %d\n",result);
    }else{
        
        printf("查找失败");
    }
}

