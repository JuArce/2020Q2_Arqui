//
// Created by juarce on 13/9/20.
//

extern int read(int file_descriptor, char * buffer, int size);
extern int write(int file_descriptor, char * buffer, int size);
extern int open(char * file_name, int access_mode, int file_permissions);
extern int close(int file_descriptor);

int main(int argc, char * argv[]) {
    int size = 10;
    char buffer[size];
    for(int i = 0; i < size; i++) {
        buffer[i] = 0;
    }

    int txt = open("./texto.txt", 2, 0777);
    read(0, buffer, size);
    write(txt, buffer, size);
    close(txt);

}
