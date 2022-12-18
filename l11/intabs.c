/*
<< Rubyとのifの書き方の違いを学ぶ >>
*/

#include <stdio.h>

int iabs1(int a){
  if(a < 0){
    return -a;
  } else{
    return a;
  }
}

int iabs2(int a){
  if(a < 0){
    return -a;
  }
  return a;
}

int iabs3(int a){
  return (a<0) ? -a : a;
}

int main(void) {
  int x, v;
  printf("x> "); scanf("%d", &x);
  // v = iabs1(x);
  // v = iabs2(x);
  v = iabs3(x);
  printf("abs = %d\n", v);

  return 0;
}
