#include<stdio.h>

struct Student {
    int rno;
    float marks;
};

struct Student input() {

    struct Student s;
    printf("Enter roll number: ");
    scanf("%d",&s.rno);

    printf("Enter marks: ");
    scanf("%f",&s.marks);

    return s;
}

void display(struct Student s) {
    printf("Roll no: %d\nMarks: %f\n",s.rno,s.marks);
}

void update (struct Student * s) {

    printf("Enter roll number: ");
    scanf("%d",&s->rno);

    printf("Enter marks: ");
    scanf("%f",&s->marks);
}

int main () {

    struct Student stu = input();

    display(stu);
    
    update(&stu);

    display(stu);

    return 0;
}