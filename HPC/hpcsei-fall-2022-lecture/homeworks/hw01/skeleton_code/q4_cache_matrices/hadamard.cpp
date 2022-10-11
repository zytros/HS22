#include<chrono>
#include<stdio.h>
#include<iostream>
#include<cmath>

void hadamard_row_wise(double* A, double* B, double* C, int N){
    for (size_t i = 0; i < N*N; i++){
        C[i] = A[i] * B[i];
    }

    // TODO: Hadamard product row-wise

}

void hadamard_col_wise(double* A, double* B, double* C, int N){
    for (size_t i = 0; i < N*N; i++){
        size_t ii = i%N;
        size_t j = i/N;
        C[j*N+ii] = A[j*N+ii] * B[j*N+ii];
    }

    // TODO: Hadamard product col-wise

}

double randDouble(){
    return (double)rand();
}

int main(int argc, char *argv[]){
    if(argc < 2){
        printf("Error: give me matrix size\n");
        return 1;
    }

    const int N = atoi(argv[1]);

    printf("\n================================\n");
    printf("N = %u\n", N);


    // TODO: Randomly initialize the matrices A,B
    double* A = (double*) calloc(N*N, sizeof(double));
    double* B = (double*) calloc(N*N, sizeof(double));
    double* C = (double*) calloc(N*N, sizeof(double)); //calloc = malloc but set to zeros

    for(size_t i = 0; i < N; i++){
        A[i] = randDouble();
        B[i] = randDouble();
    }    

    const int reps = 1e3;

    printf("start running Hadamard C = A°B row-wise benchmark...\n");
    // TODO: benchmark your hadamard_row_wise function using std::chrono and with reps=1e3. 
    // Save the time in the variable "time_row". Measure in seconds!

    const std::chrono::time_point<std::chrono::steady_clock> start = std::chrono::steady_clock::now();
    hadamard_row_wise(A, B, C, N);
    const std::chrono::time_point<std::chrono::steady_clock> end = std::chrono::steady_clock::now();
    double time_row = std::chrono::duration_cast<std::chrono::seconds>(end-start).count();
    printf("Hadamard row-wise time %9.4fs\n", time_row);

    double* C_temp = (double*) calloc(N*N, sizeof(double));
    for(int i = 0; i < N*N; i++){
        C_temp[i] = C[i];
    }

    printf("start running Hadamard C = A°B col-wise benchmark...\n");
    // TODO: benchmark your hadamard_col_wise function using std::chrono and with reps=1e3.
    // Save the time in the variable "time_col". Measure in seconds!

    const std::chrono::time_point<std::chrono::steady_clock> start_c = std::chrono::steady_clock::now();
    hadamard_col_wise(A, B, C, N);
    const std::chrono::time_point<std::chrono::steady_clock> end_c = std::chrono::steady_clock::now();
    double time_col = std::chrono::duration_cast<std::chrono::seconds>(end_c-start_c).count();

    printf("Hadamard col-wise time %9.4fs\n", time_col);

    double error = 0.0;
    for(int i = 0; i < N*N; i++){
        error += std::abs(C_temp[i] - C[i]);
    }

    if(error > 1e-10){
        printf("======================================================\n");
        printf("ERROR: row-wise and col-wise are not similar! error = %.40f\n", error);
        printf("======================================================\n");
        return 1;
    }

    printf("T(col-wise)/T(row-wise) = %9.4f\n", time_col/time_row);

    //free allocated memory
    free(A);
    free(B);
    free(C);
    free(C_temp);
    return 0;
}