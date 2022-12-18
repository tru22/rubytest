/*
<< 演習1 >>
- 一部抜粋
-- ex1-b: 実数xを与え、その平方根を出力する。
--- math.hをincludeしましょう
--- コンパイル時に-lmオプションを与えるように注意
-- ex1-i: 正の整数nを与え、nの階乗を出力する。
--- forループでも再帰でもいいです
-- 
*/

#include <stdio.h>
#include <math.h>

double ex1b(int x){ // 戻り値に注意
  return sqrt(x);
}

int ex1i(int n){
  if(n == 1){
    return 1;
  }else{
    return n * ex1i(n - 1);
  }
}

void main(){  
  printf("%f\n", ex1b(3));
  printf("%d\n", ex1i(5));
}
