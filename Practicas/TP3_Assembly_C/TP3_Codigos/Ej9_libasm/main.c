//
// Created by juarce on 13/9/20.
//

int read(int file_descriptor, char * buffer, int size);

int main(int argc, char * argv[]) {
    char buffer[3];
    int size = 3;

    read(0, buffer, size);

}
