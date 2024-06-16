#include <stdio.h>

int main() {
    int N;

    // Prompt the user to enter the number of elements
    printf("Enter the number of elements in the array: ");
    scanf("%d", &N);

    // Declare an array to store the elements
    int arr[N];

    // Prompt the user to enter the elements of the array
    printf("Enter the elements of the array:\n");
    for (int i = 0; i < N; ++i) {
        scanf("%d", &arr[i]);
    }

    // Initialize the first and second largest elements
    int firstLargest, secondLargest;
    if (N >= 2) {
        firstLargest = secondLargest = arr[0];

        for (int i = 1; i < N; ++i) {
            if (arr[i] > firstLargest) {
                secondLargest = firstLargest;
                firstLargest = arr[i];
            } else if (arr[i] > secondLargest && arr[i] != firstLargest) {
                secondLargest = arr[i];
            }
        }

        // If all elements are the same, there won't be a second largest distinct element
        if (firstLargest == secondLargest) {
            printf("All elements are the same or there is no distinct second largest element.\n");
        } else {
            printf("The FIRST LARGEST = %d\n", firstLargest);
            printf("The SECOND LARGEST = %d\n", secondLargest);
        }
    } else {
        printf("The array should have at least two elements.\n");
    }

    return 0;
}


