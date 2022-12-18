/*
<< 三角形の面積を出力する関数を作る >>
- 想定できる学生からの質問として，以下に注意
-- プリプロセッサ命令の意義
-- {}, ;のつけ忘れによるバグ
-- 変数の宣言忘れによるバグ
-- 戻り値の型指定忘れによるバグ
-- 宣言の順序によるバグ
--- mainの後にtriareaを宣言してはならない
--- プロトタイプ宣言はまだ今日やらないです
*/

#include<stdio.h>

double triarea(double w, double h){
  double s;
  s = (w * h) / 2.0;

  return s;
}

int main(void){
  double w, h, s;

  printf("w> "); scanf("%lf", &w);
  printf("h> "); scanf("%lf", &h);
  s = triarea(w, h);
  printf("triarea = %g\n", s);
  return 0;
}
