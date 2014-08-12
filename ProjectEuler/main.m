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
int main(int argc, const char* argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"%d", sumMultiplesOf3or5below1000());
        NSLog(@"%d", sumOfEvenFibonacciNumbersUnderFourMillion());
        NSLog(@"%ld", largestPrimeFactor());
    }
    return 0;
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
