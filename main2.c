#include <stdio.h>
void input(int *arrA, int N){
  for(int i = 0; i < N; i++){
    scanf("%d", &arrA[i]);
  }
}
void dotask(int *arrA, int *arrB, int N){
  for(int i = 0; i < N; i++){
    arrB[i] = arrA[i] * arrA[i];
  }
}
void out(int *arrB, int N){
  for(int i = 0; i < N; i++){
    printf("%d ", arrB[i]);
  }
}
int main(void) {
  int N;
  scanf("%d", &N);
  int arrA[N*sizeof(int)];
  int arrB[N*sizeof(int)];
  input(arrA, N);
  dotask(arrA, arrB, N);
  out(arrB, N);
  return 0;
}




/*#include <stdio.h>

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
*/