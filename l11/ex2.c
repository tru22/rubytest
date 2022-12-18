/*
<< 演習2 >>
- 一部抜粋
-- ex2-a: 1から99までの数を順に打ち出すが、3の倍数ならfizz、5の倍数ならbuzz、両方の倍数ならfizzbuzzを数の代わりに打ち出す(fizzbuzz問題)。
--- for, ifの使い方の確認
-- ex2-c: 正の整数nを受け取り、n以下の素数を順に打ち出す(論理値を返したり変数に入れるときは#include <stdbool.h>を指定する。出力は整数の0か1なので%dで)。
--- 素数判定を別の関数(isPrime)に出しておく
 */

#include <stdio.h>
#include <math.h>
#include <stdbool.h>

void ex2a(){
  int i;
  
  for(i = 1; i < 99; i++){
    if(i % 3 == 0 && i % 5 == 0){
      printf("fizzbuzz\n");
    }else if(i % 3 == 0){
      printf("fizz\n");
    }else if(i % 5 == 0){
      printf("buzz\n");
    }else{
      printf("%d\n", i);
    }
  }
}

bool isPrime(int n){ // 極めてナイーブな素性判定．2からn-1まで割り続ける
  int i;
  for(i = 2; i < n; i++){
    if(n % i == 0){
      return false; 
    }
  }
  return true;
}

void ex2c(int n){
  int i;
  for(i = n; i > 1; i--){
    if(isPrime(i)){
      printf("%d\n", i);
    }
  }
}

void main(){
  ex2a();
  ex2c(100);
}
