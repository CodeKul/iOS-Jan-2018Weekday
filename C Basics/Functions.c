#include<stdio.h>

/*
    return_type function_name (parameters) {

        statements;
        return value;
    }
*/

int main() {

    void function();
    void function_with_params(int);
    int function_with_return_value();

    function();
    function_with_params(10);

    printf("Returned value: %d\n",function_with_return_value());

    return 0;
}

void function() {

    printf("this is function\n");
}

void function_with_params(int x) {
    printf("value: %d\n",x);
}

int function_with_return_value () {

    return 20;
}