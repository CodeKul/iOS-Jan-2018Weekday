#include<stdio.h>

int main() {

    int a = 10;
    int b = 10;
    int c = 0;
    
    c = a > b ? 10 : 20;

    printf("%d\n",c);

    if (a < b) {
        printf("a is greater\n");
    }
    else if (a == b) {
        if (a == 10) {
            printf("a is equal to 10\n");
        }
        printf("both are equal\n");
    }
    else {
        printf("b is greater\n");
    }

    // Loops

    printf("while\n\n");
    a = 0;
    while(a < 10) {
        printf("Codekul\n");
        a++;
    }
    printf("do....while\n\n");
    a = 10;
    do {
        printf("Codekul\n");
        a++;
    }while(a < 10);

    printf("for\n\n");

    for(a = 0; a < 10; a++) {
        printf("Codekul\n");
    }

    switch (a) {
        case 1:
            printf("One\n");
            break;
        case 2:
            printf("Two\n");
            break;
        default:
            printf("This is not a digit\n");
    }

    return 0;
}