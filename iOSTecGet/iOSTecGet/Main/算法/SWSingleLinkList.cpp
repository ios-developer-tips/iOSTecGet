//
//  SWSingleLinkList.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWSingleLinkList.hpp"
#include<iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;


typedef int ElemType;
typedef bool Status;
typedef struct LNode{
    
    ElemType    data;
    struct LNode *next;
}LNode, *LinkList;


Status GetElem(LinkList L, int i,ElemType &e){
    
    // L为带头节点的单链表的头指针
    // 当第i个元素存在时，其值赋给e并返回OK，否则返回error
    LinkList p = L->next ;
    int j = 1;
    while (p && j<i) {
        
        p = p->next;
        ++j;
    }
    if (!p || j>i) {
        return false;
    }
    e=p->data;
    return true;
}

Status ListInsert(LinkList &L, int i, ElemType e){
    
    // 带头节点的链表L中在第i个位置插入元素e
    LinkList  p = L; int j = 0;
    while (p && j<i-1) {
        p = p->next;
        ++j;
    }
    if (!p || j>i) {
        return false;
    }
    LinkList s = (LinkList)malloc(sizeof(LNode));
    s->data = e;
    s->next = p->next;
    p->next = s;
    return true;
}

// 头插法建立链表
LinkList CreateList(LinkList &L){
    
    LNode *s;
    int x;
    L=(LinkList)malloc(sizeof(LNode));
    L->next = NULL;
    scanf("%d",&x);
    while (x!=9999) {
        s=(LNode *)malloc(sizeof(LNode));
        s->data=x;
        s->next=L->next;
        L->next = s;
        scanf("%d",&x);
    }
    return L;
}
//void CreateList(LinkList &L, int n){
//    
//    // 逆序输入n个元素的值，建立带头节点的单链线性表L
//    L = (LinkList)malloc(sizeof(LNode));
//    L->next = NULL;
//    for (int i=n; i>0; i--) {
//       LinkList  p = (LinkList)malloc(sizeof(LNode)); // 生成新节点
//        
//        scanf("%d",&p->data);
//        p->next = L->next;
//        L->next = p;
//    }
//}


// 删
Status ListDelete(LinkList &L, int i, ElemType &e){
    LinkList p = L;
    int j = 0;
    while (p->next && j<i-1) {
        p = p->next;
        ++j;
    }
    if (!(p->next) || j>i-1) {
        return false;
    }
    LinkList  q=p->next;
    p->next = q->next;
    e = q->data; free(q);
    return true;
}

void PrintList(LinkList L){
    
    L = L->next;
    while (L!=NULL) {
        printf("%3d",L->data);
        L=L->next;
    }
    printf("\n");
}

void createSingleList(){
    
//    LinkList list;
//    CreateList(list, 5);
//
//    while (list->da) {
//        printf("-----");
//        printf("%d",list->data);
//        list = list->next;
//    }
    
//    LinkList L;
//    CreateList(L);
//    PrintList(L);
}
