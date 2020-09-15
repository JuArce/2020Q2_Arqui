extern unsigned int fibonacci(unsigned int n);
extern int write(int file_descriptor, char * buffer, int size);

int main(int argc, char * argv[]) {
    int fibo = fibonacci(5);
    int size = 2;
    char string[size];
    string[0] = fibo + '0';
    string[1] = '\n';   
    write(1, string, 2);
}