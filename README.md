# Guided Assignment - Implementing Bubble Sort in C#

## Introduction
In this assignment, you will implement and understand the Bubble Sort algorithm in C#, a fundamental sorting technique in computer programming. Bubble Sort is an intuitive algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. This assignment will help you grasp the basics of sorting algorithms and their implementation in C#.

### Pseudocode

```psudocode
procedure bubbleSort(arr: List of Comparable)
    // Get the length of the input array
    arrayLength = length(arr)
    
    // Initialize a flag to track whether any swaps occurred in a pass
    swapOccurred = true
    
    // Continue iterating until no swaps occur in a pass
    while swapOccurred is true
        // Reset the swap flag at the start of each pass
        swapOccurred = false
        
        // Iterate through the array elements from the first to the second-to-last element
        for currentIndex from 1 to arrayLength - 1
            // Compare the current element with the next element
            if arr[currentIndex - 1] > arr[currentIndex]
                // Swap the elements if they are out of order
                swap arr[currentIndex - 1] and arr[currentIndex]
                
                // Set the swap flag to true to indicate a swap occurred
                swapOccurred = true
            end if
        end for
    end while
end procedure

```

---

## Detailed Requirements

**Project Setup (20 Points):**

- Create a new console application in your IDE.
- Name the project `GA_BubbleSort_YourName` (replace "YourName" with your actual name).

**Understanding of Bubble Sort Algorithm (15 Points):**

- Write pseudo-code explaining the Bubble Sort algorithm.
- Describe how the algorithm compares and swaps elements.
- Explain the importance of loop conditions in sorting.

**Implementation of Bubble Sort (15 Points):**

- Implement the Bubble Sort algorithm in C#.
- Ensure your code follows the described algorithm.
- Add clear comments explaining the code's functionality.

**Explanation of Algorithm Logic (15 Points):**

- Provide comments explaining:
    - The purpose of each loop in the algorithm.
    - The role of comparisons and swaps.
    - How the algorithm progresses and concludes.

**Implementing Loop Conditions (15 Points):**

- Implement necessary loop conditions in your Bubble Sort.
- Explain through comments how these conditions control sorting.
- Discuss the role of these conditions in efficient sorting.

**Optimizing the Sorting Process (10 Points):**

- Optimize the sorting, such as breaking out of the loop if no swaps are made.
- Explain how this optimization improves performance.
- Discuss the importance of optimization in sorting algorithms.

**Code Testing and Output Accuracy (5 Points):**

- In the `Main` method, create test cases to demonstrate Bubble Sort.
- Test with arrays of different sizes and contents.
- Verify that the output is correctly sorted.

**Submission (5 Points):**

- Upload the complete project to GitHub.
- Make the repository public and include all necessary files.
- Provide the GitHub repository link in your Canvas submission.

**Total (100 Points):**

- Each section is required.
- Points are awarded based on meeting the detailed requirements accurately.

Make sure to follow these requirements closely to meet all the criteria outlined in the rubric for your assignment.

---

## Step By Step
--- 

## Step 1
Certainly, let's simplify the explanation and provide a code example for the `pass` loop in the Bubble Sort algorithm.

The `pass` loop is responsible for repeatedly going through the array and making sure that the largest unsorted element "bubbles up" to its correct position at the end of the array. Here's a code example:

```csharp
public static void BubbleSort(int[] arr)
{
    int arrayLength = arr.Length;

    for (int currentPass = 0; currentPass < arrayLength - 1; currentPass++)
    {
        /*
        - Inner Loop
        - Condition
        - Swapping Algorithm
        */
    }
}
```

In this code example:

- The `pass` loop (`currentPass`) runs for a number of times equal to the length of the array minus one (`arrayLength - 1`). This ensures that we go through the entire array while moving the largest unsorted element to the end.


---

## Step 2 - Inner Loop


Certainly, let's focus on explaining what the inner loop is doing in the Bubble Sort algorithm:

```csharp
// for (int currentPass = 0; currentPass < arrayLength - 1; currentPass++)
// {
        for (int currentIndex = 0; currentIndex < arrayLength - 1 - currentPass; currentIndex++)
        {
            /*
                Condition
                Swapping Algorithnm
            */
        }
// }
```

The inner loop is responsible for comparing adjacent elements in the array and swapping them if they are in the wrong order. Here's a step-by-step explanation of what it does:

1. `currentIndex` Initialization: The inner loop starts with `currentIndex` set to `0`, representing the first element of the unsorted portion of the array.



---

## Step 3 - Condition

Certainly, let me provide you with a code example that focuses solely on the condition inside the loop:

```csharp
for (int currentIndex = 0; currentIndex < arrayLength - 1 - currentPass; currentIndex++)
{
    if (arr[currentIndex] > arr[currentIndex + 1])
    {
        // Swapping Algorithm
    }
}
```

In this code snippet, the condition inside the loop is specifically checking whether the element at the `currentIndex` is greater than the next element (`currentIndex + 1`) in the array. This condition is used to determine if a swap is needed to bring the larger element towards the end of the unsorted portion of the array. If the condition is `true`, it means the elements are in the wrong order, and a swap is performed to correct their positions.

---

## Step 4 - Swapping Algorithm

Certainly, here's the code with comments explaining each line:

```csharp
// Store the value of the element at currentIndex in a temporary variable called temp
int temp = arr[currentIndex];

// Replace the value at currentIndex with the value of the next element (currentIndex + 1)
arr[currentIndex] = arr[currentIndex + 1];

// Assign the original value (stored in temp) back to the next element, completing the swap
arr[currentIndex + 1] = temp;
```

These comments describe what each line of code does:

1. We create a temporary variable `temp` to hold the value of the element at `currentIndex`.
2. We replace the value at `currentIndex` with the value of the next element (`currentIndex + 1`), effectively moving the next element to the current position.
3. We assign the original value (which we stored in `temp`) back to the next element, completing the swap between the two adjacent elements.

After these three lines of code execute, the values of the two adjacent elements in the `arr` array have been swapped, which is a fundamental operation in the Bubble Sort algorithm to sort the array.

---

## Step 5 - Putting all together

Of course, let's use more descriptive variable names and clarify the meaning of `pass`. Here's the modified `BubbleSort` method with improved variable names and explanations:

```csharp
public static void BubbleSort(int[] arr)
{
    int arrayLength = arr.Length;
    bool hasSwapped;

    for (int currentPass = 0; currentPass < arrayLength - 1; currentPass++)
    {
        hasSwapped = false;

        for (int currentIndex = 0; currentIndex < arrayLength - 1 - currentPass; currentIndex++)
        {
            if (arr[currentIndex] > arr[currentIndex + 1])
            {
                // Swap arr[currentIndex] and arr[currentIndex + 1]
                int temp = arr[currentIndex];
                arr[currentIndex] = arr[currentIndex + 1];
                arr[currentIndex + 1] = temp;
                hasSwapped = true;
            }
        }

        // If no two elements were swapped in the inner loop, the array is already sorted
        if (!hasSwapped)
        {
            break;
        }
    }
}
```

In this version:

- `arrayLength` represents the length of the array, making it clear.
- `hasSwapped` is a boolean variable that indicates whether any swaps were made in a pass.
- `currentPass` represents the current pass or iteration of the outer loop. Each pass brings the largest element to its final position, so it's like "passing" through the array.
- `currentIndex` represents the current index within the array that is being compared and swapped.

The `currentPass` variable helps keep track of how many elements are sorted at the end of each pass, and it allows us to reduce the inner loop's range in subsequent passes to avoid unnecessary comparisons with already sorted elements.

---
### Final Test

### Code to add
```csharp
using System;

class Program
{
    static Random random = new Random();

    static void Main(string[] args)
    {
        int size = 10; // Change the size of the array as needed
        int minValue = 1; // Change the minimum value as needed
        int maxValue = 100; // Change the maximum value as needed

        int[] randomArray = GenerateRandomIntArray(size, minValue, maxValue);

		// Display your array in it's unsorted form

		// Call your bubble sort method

		// Display your method after its been sorted
    }

    static int[] GenerateRandomIntArray(int size, int minValue, int maxValue)
    {
        if (size <= 0 || minValue > maxValue)
        {
            throw new ArgumentException("Invalid arguments");
        }

        int[] arr = new int[size];
        for (int i = 0; i < size; i++)
        {
            arr[i] = random.Next(minValue, maxValue + 1);
        }
        return arr;
    }

}

```


### Expected result
```Console
Unsorted: 45 12 88 73 5 19 64 34 99 1
Sorted: 1 5 12 19 34 45 64 73 88 99
```

---

## Rubric

| Criteria | Description | Points |
|----------|-------------|--------|
| **Project Setup** | Proper creation of a new console application named GA_BubbleSort_YourName. | 20 |
| **Understanding of Bubble Sort Algorithm** | Clear explanation and pseudo-code of Bubble Sort. | 15 |
| **Implementation of Bubble Sort** | Correct implementation of Bubble Sort in C#. | 15 |
| **Explanation of Algorithm Logic** | Detailed comments explaining the logic of the algorithm. | 15 |
| **Implementing Loop Conditions** | Correct implementation and explanation of loop conditions. | 15 |
| **Optimizing the Sorting Process** | Implementation and explanation of optimization techniques. | 10 |
| **Code Testing and Output Accuracy** | Successful testing and demonstration of accurate sorting. | 5 |
| **Submission** | Successful upload to GitHub with the correct link provided. | 5 |
| **Total** |  | 100 |

This guided assignment provides a comprehensive look at the Bubble Sort algorithm in C#, from understanding its logic in pseudo-code to implementing and optimizing it in code, along with clear explanations and testing.