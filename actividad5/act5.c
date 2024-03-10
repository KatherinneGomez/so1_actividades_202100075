#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

void* thread_function(void *arg) {
    printf("H. Hilo creado en el proceso: %d, ID del hilo: %lu\n", getpid(), pthread_self());
}

void thread_create(){
    printf("P. Proceso hijo PID: %d, padre PID: %d\n", getpid(), getppid());
    
}

int main() {
    pid_t pid;
    pthread_t thread_id;

    printf("P. Proceso inicial PID: %d\n", getpid());

    pid = fork();
    if (pid == 0) { /* child process*/
        fork();
        thread_create();

        pthread_create(&thread_id, NULL, thread_function, NULL);
    }
    
    pthread_create(&thread_id, NULL, thread_function, NULL);
    fork();
    printf("Proceso PID: %d\n", getpid());

    return 0;
}