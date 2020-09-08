//
// Created by juarce on 6/9/20.
//
#define STDOUT 1

int sys_write(int fd, void * buffer, int size);
int strlen(const char * str);

int puts(const char * str) {
    int len = strlen(str);
    return sys_write(STDOUT, (void *)str, len);
}

int main(int argc, char * argv) {
    puts("HOLA MUNDO\n");
}

int strlen(const char * str) {
    int len = 0;
    while(*str++ != 0) {
        len++;
    }
    return len;
}
