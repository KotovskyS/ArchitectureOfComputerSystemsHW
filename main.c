#include <stdio.h>

int main(void) {
  int N;
  scanf("%d", &N);
  int arrA[N*sizeof(int)];
  int arrB[N*sizeof(int)];
  for(int i = 0; i < N; i++){
    scanf("%d", &arrA[i]);
  }
  for(int i = 0; i < N; i++){
    arrB[i] = arrA[i] * arrA[i];
  }
  for(int i = 0; i < N; i++){
    printf("%d ", arrB[i]);
  }
  return 0;
}