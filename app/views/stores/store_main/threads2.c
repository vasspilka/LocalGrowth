#include <pthread.h> 
#include <stdio.h> 
 
int a=0; 
pthread_mutex_t mutex=PTHREAD_MUTEX_INITIALIZER; 
void *myThread(void *string) 
{ 
 int i; 
 int rc; 
 int local; 
 for (i=0; i<30; i++) 
 { 
 rc=pthread_mutex_lock(&mutex); 
 local=a; 
 sleep(1); 
 local=local+1; 
 a=local; 
 rc=pthread_mutex_unlock(&mutex); 
 printf("%d:%s\n",i,string); 
 } 
} 
 
int main() 
{ 
 char *e_str="Hello!"; 
 char *f_str="Bonjour!"; 
 
 pthread_t e_th1; 
 pthread_t f_th1; 
 pthread_t e_th2; 
 pthread_t f_th2; 
 int rc; 
 rc=pthread_create(&e_th1, NULL, myThread, (void *)e_str); 
 if (rc) 
 exit(-1);
rc=pthread_create(&f_th1, NULL, myThread, (void *)f_str); 
 if (rc) 
 exit(-1); 
 
 rc=pthread_create(&e_th2, NULL, myThread, (void *)e_str); 
if (rc) 
 exit(-1); 
rc=pthread_create(&f_th2, NULL, myThread, (void *)f_str); 
if (rc) 
 exit(-1); 
 pthread_join(e_th1, NULL); 
 pthread_join(f_th1, NULL); 
 pthread_join(e_th2, NULL); 
 pthread_join(f_th2, NULL); 
 printf("Main finished. a=%d\n",a); 
 pthread_exit(NULL); 
} 
