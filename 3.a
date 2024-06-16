#include <stdio.h>

// Define a union named 'Data' that can hold an integer, float, and character
union Data {
    int integer;
    float floating;
    char character;
};

int main() {
    union Data data;

    // Accept input for an integer value
    printf("Enter an integer value: ");
    scanf("%d", &data.integer);

    // Accept input for a float value
    printf("Enter a float value: ");
    scanf("%f", &data.floating);

    // Accept input for a character value
    printf("Enter a character value: ");
    scanf(" %c", &data.character);

    // Display the values stored in the union
    printf("\nValues stored in the union:\n");
    printf("Integer value: %d\n", data.integer);
    printf("Float value: %f\n", data.floating);
    printf("Character value: %c\n", data.character);

    return 0;
}

