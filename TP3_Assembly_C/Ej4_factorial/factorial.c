//
// Created by juarce on 6/9/20.
//
#include <stdio.h>

int factorial(int n) {
    if(n == 0) {
        return 1;
    }
    int factorial_n_1 = factorial(n - 1);
    return n * factorial_n_1;
}

int main(int argc, char * argv) {
    factorial(4);
}