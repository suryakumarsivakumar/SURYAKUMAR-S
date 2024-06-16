#include <stdio.h>
#include <string.h>

// Define a structure to represent a student
struct Student {
    char name[100];
    int rollNumber;
    int marks[3];
    int totalMarks;
    float averageMarks;
};

// Function prototypes
void readStudentDetails(struct Student* student);
void calculateTotalAndAverageMarks(struct Student* student);
void displayStudentDetails(const struct Student* student);
struct Student findStudentWithHighestMarks(struct Student students[], int n);

int main() {
    int n;

    // Prompt the user to enter the number of students
    printf("Enter the number of students: ");
    scanf("%d", &n);

    // Declare an array to store the students
    struct Student students[n];

    // Read details for each student
    for (int i = 0; i < n; ++i) {
        printf("Enter details for student %d:\n", i + 1);
        readStudentDetails(&students[i]);
        calculateTotalAndAverageMarks(&students[i]);
    }

    // Display details of each student
    printf("\nStudent Details:\n");
    for (int i = 0; i < n; ++i) {
        printf("Student %d:\n", i + 1);
        displayStudentDetails(&students[i]);
        printf("\n");
}
// Find and display the student with the highest total marks
    struct Student topStudent = findStudentWithHighestMarks(students, n);
    printf("Student with highest total marks:\n");
    displayStudentDetails(&topStudent);

    return 0;
}

// Function to read details of a student
void readStudentDetails(struct Student* student) {
    printf("Name: ");
    scanf("%s", student->name);
    printf("Roll Number: ");
    scanf("%d", &student->rollNumber);
    printf("Marks in three subjects: ");
    for (int i = 0; i < 3; ++i) {
        scanf("%d", &student->marks[i]);
    }
}

// Function to calculate total and average marks of a student
void calculateTotalAndAverageMarks(struct Student* student) {
    student->totalMarks = 0;
    for (int i = 0; i < 3; ++i) {
        student->totalMarks += student->marks[i];
    }
    student->averageMarks = student->totalMarks / 3.0;
}

// Function to display details of a student
void displayStudentDetails(const struct Student* student) {
    printf("Name: %s\n", student->name);
    printf("Roll Number: %d\n", student->rollNumber);
    printf("Total Marks: %d\n", student->totalMarks);
    printf("Average Marks: %.2f\n", student->averageMarks);
}
// Function to find the student with the highest total marks
struct Student findStudentWithHighestMarks(struct Student students[], int n) {
    struct Student topStudent = students[0];
for (int i = 1; i < n; ++i) {
        if (students[i].totalMarks > topStudent.totalMarks) {
            topStudent = students[i];
        }
    }
    return topStudent;
}

