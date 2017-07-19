//
//  main.c
//  algorithm
//
//  Created by Aka on 2017/7/19.
//  Copyright © 2017年 Aka. All rights reserved.
//

#include <stdio.h>

void QuickSort(int array[], int len);
void Sort(int array[], int low, int high);


int main(int argc, const char * argv[]) {
    
    int array[] = {49,38,65,97,76,13,27,49};
    int len = sizeof(array)/sizeof(array[0]);
    QuickSort(array, len);
    for (int i=0; i <len; i++) {
        printf("%d,",array[i]);
    }
    return 0;
}

void QuickSort(int array[], int len) {
    Sort(array, 0, len-1);
}

void Sort(int array[], int low, int high) {
    int i,j;
    int index;
    if (low >= high) {
        return;
    }
    i= low;
    j = high;
    index = array[i];
    while (i <j) {
        while (i <j && array[j] >= index) {
            j--;
        }
        if (i <j) {
            array[i++] = array[j];
        }
        while (i <j && array[i] <index) {
            i++;
        }
        if (i < j) {
            array[j--] = array[i];
        }
    }
    array[i] = index;
    Sort(array, low, i-1);
    Sort(array, i+1, high);
}
