using System;

namespace GA_BubbleSort
{
    internal class Program
    {
        static Random random = new Random();

        static void Main(string[] args)
        {
            int size = 10; // Change the size of the array as needed
            int minValue = 1; // Change the minimum value as needed
            int maxValue = 100; // Change the maximum value as needed

            int[] randomArray = GenerateRandomIntArray(size, minValue, maxValue);

            Console.WriteLine("Unsorted: ");
            PrintArray(randomArray);

            BubbleSort(randomArray);

            Console.WriteLine("\nSorted: ");
            PrintArray(randomArray);
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

        static void BubbleSort(int[] arr)
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

        static void PrintArray(int[] arr)
        {
            foreach (int num in arr)
            {
                Console.Write(num + " ");
            }
        }
    }
}
