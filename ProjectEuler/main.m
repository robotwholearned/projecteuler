//
//  main.m
//  ProjectEuler
//
//  Created by Sandquist, Cassandra G on 8/12/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>

int sumMultiplesOf3or5below1000();
int sumOfEvenFibonacciNumbersUnderFourMillion();
long largestPrimeFactor();
long largestPalindromeFromProductOfThreeDigitNumbers();
int smallestNumberEvenlyDivisibleFromOneToTwenty();
int sumSquareDifference();
long the10001stPrime();
BOOL checkIfPrime(int num);

int main(int argc, const char* argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"1: %d", sumMultiplesOf3or5below1000());
        NSLog(@"2: %d", sumOfEvenFibonacciNumbersUnderFourMillion());
        NSLog(@"3: %ld", largestPrimeFactor());
        NSLog(@"4: %ld", largestPalindromeFromProductOfThreeDigitNumbers());
        NSLog(@"5: %d", smallestNumberEvenlyDivisibleFromOneToTwenty());
        NSLog(@"6: %d", sumSquareDifference());
        NSLog(@"6: %ld", the10001stPrime());
    }
    return 0;
}
#pragma mark Problem 7
long the10001stPrime()
{
    //By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    //What is the 10 001st prime number?
    //faster to use a prime sieve?

    BOOL isPrimeNumber = 0;

    //have num,
    //check if prime
    //yes: incement prime found, add num to array
    //increment num

    isPrimeNumber = checkIfPrime(23);
    return isPrimeNumber;
}
BOOL checkIfPrime(int num)
{
    BOOL isPrime = YES;
    if (num % 2 == 0 || num % 3 == 0 || num % 5 == 0) {
        isPrime = NO;
    } else {
        for (int i = 2; i < num - 1; i++) {
            if (num % i == 0) {
                isPrime = NO;
                break;
            }
        }
    }
    return isPrime;
}
#pragma mark Problem 6
int sumSquareDifference()
{
    //The sum of the squares of the first ten natural numbers is, 12 + 22 + ... + 102 = 385

    //The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)2 = 552 = 3025

    //Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

    //Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
    int sumSquares = 0;
    int sumNatural = 0;

    for (int i = 1; i <= 100; i++) {
        sumSquares += i * i;
        sumNatural += i;
    }

    sumNatural = sumNatural * sumNatural;
    return abs(sumSquares - sumNatural);
}

#pragma mark Problem 5
int smallestNumberEvenlyDivisibleFromOneToTwenty()
{
    //    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?
    //    BOOL isFound = NO;
    int num = 0;

    // NSArray* numsToCheck = @[ @11, @13, @14, @16, @17, @18, @19, @20 ];

    //    int numDividedEvenly = 0;
    //
    //    while (!isFound) {
    //        NSLog(@"number: %d", num);
    //        numDividedEvenly = 0;
    //        for (int i = 1; i <= 20; i++) {
    //            if (num % i == 0) {
    //                numDividedEvenly++;
    //            }
    //            if (numDividedEvenly == 20) {
    //                isFound = YES;
    //            }
    //        }
    //        num++;
    //    }

    return num;
}

#pragma mark Problem 4
long largestPalindromeFromProductOfThreeDigitNumbers()
{
    //A palindromic number reads the same both ways.The largest palindrome made from the product of two 2 - digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3 - digit numbers.

    long reveresedNum = 0;
    long originalNum = 0;
    long perservedOriginal = 0;
    long max = 0;

    for (int i = 999; i > 99; i--) {
        for (int j = 999; j > 99; j--) {
            reveresedNum = 0;
            originalNum = i * j;
            perservedOriginal = i * j;

            while (originalNum > 0) {
                reveresedNum *= 10;
                long remaninder = originalNum % 10;
                reveresedNum += remaninder;
                originalNum /= 10;
            }
            if (reveresedNum == perservedOriginal && perservedOriginal > max) {
                max = perservedOriginal;
            }
        }
    }

    return max;
}
#pragma mark Problem 3
long largestPrimeFactor()
{

    // The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143 ?
    long baseNumber = 600851475143;
    long largestPrimeFactor = 1;
    for (int i = 2; i <= baseNumber; i++) {
        while (baseNumber % i == 0 && i > largestPrimeFactor) {
            largestPrimeFactor = i;
            baseNumber /= i;
        }
    }
    return largestPrimeFactor;
}

#pragma mark Problem 2
int sumOfEvenFibonacciNumbersUnderFourMillion()
{
    /*Each new term in the Fibonacci sequence is generated by adding the previous two terms.By starting with 1 and 2, the first 10 terms will be : 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ... By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even - valued terms.
   */
    int max = 4000000;
    int sum = 0;
    int a = 1;
    int b = 2;
    int fibonnaci;

    sum += b;

    while (b < max) {
        //NSLog(@"a:%d, b: %d", a, b);
        fibonnaci = a + b;
        if (fibonnaci % 2 == 0) {
            //NSLog(@"even");
            sum += fibonnaci;
        }
        a = b;
        b = fibonnaci;
    }

    return sum;
}

#pragma mark Problem 1
int sumMultiplesOf3or5below1000()
{
    /* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
        Find the sum of all the multiples of 3 or 5 below 1000.
    */
    int sum = 0;

    for (int i = 0; i < 1000; i++) {
        //NSLog(@"%d", i);
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
            //NSLog(@"Sum: %d", sum);
        }
    }

    return sum;
}
