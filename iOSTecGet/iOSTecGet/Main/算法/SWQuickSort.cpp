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
typedef  int ElemType;
typedef struct {
    
    ElemType data[MaxSize];
    int length;
}SqlList;

// 增/删/改/查
bool ListInsert(SqlList &L,int i,ElemType data){
    
    if (i<1 || i>L.length) {
        return false;
    }
    
    if (L.length >= MaxSize) {
        return false;
    }
    
    for (int j=L.length; j>i; j--) {
        
        // 插入数据元素之后的数据一律后移
        L.data[j]=L.data[j-1];
    }
    L.data[i]=data;
    L.length++;
    return true;
}

// 删
bool ListDelete(SqlList &L, int i, ElemType &data){
    
    if (i<1 || i>L.length) {
        return false;
    }
    data = L.data[i-1];
    
    for (int j=i; j<L.length; j++) {
        L.data[j-1]=L.data[j];
    }
    L.length--;
    return true;
}

// 改
bool ListUpdate(SqlList &L, int i,ElemType data){
    
    if (i<1 || i>L.length) {
        return false;
    }
    L.data[i-1] = data;
    return true;
}

// 查
int LocateElem(SqlList &L,ElemType data){
    
    for (int i=0; i<L.length; i++) {
        if (L.data[i] == data) {
            return i+1;
        }
    }
    return false;
}







void PrintList(SqlList &L){
    
    for (int i=0; i<L.length; i++) {
        printf("%4d",L.data[i]);
    }
    printf("\n");
}

void QuickSortData(){
    
    // 初始化数据
    SqlList L; // 顺序表的名称
    bool ret; // 查看返回值
    ElemType del ;// 要删除的元素
    // 手动为顺序表赋值
    L.data[0]=1;
    L.data[1]=2;
    L.data[2]=3;// 总计三个元素
    L.length = 3;
    ret = ListInsert(L, 2, 666);
    ret = ListInsert(L, 2, 999);
    if (ret) {
        printf("插入元素成功\n");
        PrintList(L);
    }
    
    ret = ListDelete(L, 3, del);
    if (ret) {

        printf("删除元素成功\n");
        printf("删除元素值为\n %d \n",del);
        PrintList(L);
    }else{
        printf("删除失败\n");
    }

    // 修改值
    ret = ListUpdate(L, 1, 888);
    if (ret) {

        printf("修改成功\n");
        PrintList(L);
    }

    // 查找值
    int locate = LocateElem(L, 666);
    if (locate) {

        printf("查找成功\n");
        printf("元素位置为 %d\n",locate);
    }else{

        printf("查找失败\n");
    }
}

