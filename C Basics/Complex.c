#include<stdio.h>

struct Complex {

    int real;
    int imag;
};

void display(struct Complex c) {

    printf("(%d + %di)\n",c.real,c.imag);
}

void input (struct Complex * c) {

    printf("Enter real part: ");
    scanf("%d",&c->real);

    printf("Enter imaginary part: ");
    scanf("%d",&c->imag);
}

struct Complex subtraction (struct Complex c1, struct Complex c2) {

    struct Complex res;
    res.real = c1.real - c2.real;
    res.imag = c1.imag - c2.imag;

    return res;
}

struct Complex addition (struct Complex c1, struct Complex c2) {

    struct Complex res;
    res.real = c1.real + c2.real;
    res.imag = c1.imag + c2.imag;

    return res;
}

struct Complex multiplication(struct Complex c1, struct Complex c2) {

    struct Complex res;
    res.real = c1.real * c2.real - c1.imag * c2.imag ;
    res.imag = c1.real * c2.imag + c1.imag * c2.real ;
    return res;

}

int main() {

    struct Complex c1;
    struct Complex c2;
    struct Complex result;

    input(&c1);
    input(&c2);

    display(c1);
    display(c2);

    result = addition(c1,c2);
    display(result);
    
    result = subtraction(c1,c2);
    display(result);
    
    result = multiplication(c1,c2);
    display(result);

    return 0;
}