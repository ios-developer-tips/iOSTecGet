//
//  SWRadixSort.cpp
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/8/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#include "SWRadixSort.hpp"
#include <stdio.h>
#include <stdlib.h>

// 基数排序
int maxbit(int data[], int n){ // 辅助函数，求数据的最大位数
    
    int maxData = data[0];
    // 先求出最大数
    for (int i=0; i<n; ++i) {
        if (maxData < data[i]) {
            maxData = data[i];
        }
    }
    int d = 1;
    int p = 10;
    while (maxData >= p) {
        // p *= 10;
        maxData /= 10;
        ++d;
    }
    return d;
}
