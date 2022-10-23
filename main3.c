#include <stdio.h>
void input(FILE * input_, int *arrA, int N){
  for(int i = 0; i < N; i++){
    fscanf(input_, "%d", &arrA[i]);
  }
}
void dotask(int *arrA, int *arrB, int N){
  for(int i = 0; i < N; i++){
    arrB[i] = arrA[i] * arrA[i];
  }
}
void out(FILE * output, int *arrB, int N){
  for(int i = 0; i < N; i++){
    fprintf(output, "%d ", arrB[i]);
  }
}
int main(int argc, char * argv[]) {
  FILE * input_ = fopen(argv[1], "r");
  FILE * output = fopen(argv[2], "w");
  int N;
  fscanf(input_, "%d", &N);
  int arrA[N*sizeof(int)];
  int arrB[N*sizeof(int)];
  input(input_, arrA, N);
  dotask(arrA, arrB, N);
  out(output, arrB, N);
  fclose(input_);
  fclose(output);
  return 0;
}