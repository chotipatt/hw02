#include <stdio.h>
#include <time.h>

int max1(int a, int b) { 
    return (a>b)?a:b;
}

int max2(int a, int b) { 
    int isaGTb=a>b;
    int max; 
    if (isaGTb)
        max=a; 
    else
        max=b; 
    return max;
}

int main(){
    int a = max1(1,2);
}            