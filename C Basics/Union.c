#include<stdio.h>

union Student {

    int rno;
    float marks;
};

void display(union Student s) {
    printf("Roll no: %d\nMarks: %f\n",s.rno,s.marks);
}

int main () {

    union Student stu;

    stu.marks = 100;
    stu.rno = 10;

    display(stu);

    return 0;
}