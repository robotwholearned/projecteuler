//
//  main.m
//  ProjectEuler
//
//  Created by Sandquist, Cassandra G on 8/12/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import <Foundation/Foundation.h>

int sumMultiplesOf3or5below1000();

int main(int argc, const char* argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"Hello, World!");
        NSLog(@"%d", sumMultiplesOf3or5below1000());
    }
    return 0;
}

int sumMultiplesOf3or5below1000()
{
    /* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
        Find the sum of all the multiples of 3 or 5 below 1000.
    */
    int sum = 0;

    for (int i = 0; i < 1000; i++) {
        NSLog(@"%d", i);
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
            NSLog(@"Sum: %d", sum);
        }
    }

    return sum;
}
