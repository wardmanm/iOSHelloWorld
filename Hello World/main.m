//
//  main.m
//  Hello World
//
//  Created by Mike Wardo on 4/29/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
#import "console.h"

//seeds a random number
int randomNumber(int A){
    sranddev();
    A = rand() % 10 + 1;
    return A;
}

//gets input from user
int getIntFromUser(int A){
    A = getIntegerFromConsole(@"Guess a random number from 1 - 10: ");
    return A;
}

//Main function
int main(int argc, const char * argv[])
    {
        @autoreleasepool {
            int randomNum;
            int getInt = 0;
            int count = 0;
            
            randomNum = randomNumber(randomNum);
            
            //Number guessing game
            NSLog(@"Guess a number from 1 to 10: \n");
            while (count == 0){
                getInt = getIntFromUser(getInt);
                if (getInt > randomNum){
                    NSLog(@"\n Too high! Guess again: ");
                } else if (getInt < randomNum){
                    NSLog(@"\n Too Low! Guess again: ");
                } else {
                    NSLog(@"\n You got it!");
                    count = 1;
                }
            }
            
            //Fizz buzz
            NSLog(@"\n\n  FIZZ BUZZZZZ!!");
            for (int i = 1; i <= 100; i++){
                if ( i % 3 == 0 && i % 5 != 0){
                    NSLog(@"Fizz! \n");
                } else if (i % 5 == 0 && i % 3 != 0){
                    NSLog(@"Buzz! \n");
                } else if (i % 3 == 0 && i % 5 == 0){
                    NSLog(@"Fizz BUZZ! \n");
                } else {
                    NSLog(@"%i \n", i);
                }
            }
        
        }
        return 0;
    }




//void helloThere(NSString *name, int number, float decimal) {
//    NSLog(@"Hey there %@! \n There are at least %i ways to write the same function. \n You also will probably have to try at least %f times to get it right. \n \n \n"
//          ,name, number, decimal);
//    
//}
//
////Increment Integer Function
//int incrInteger (int intIncr){
//    intIncr++;
//    return intIncr;
//}
//
////Decrement Integer Function
//int decrInteger (int intDecr){
//    intDecr--;
//    return intDecr;
//}
//
////Adds 2 integers function
//int addInts (int intA, int intB){
//    return intA + intB;
//
//}
//
////Finds the sin of a float function
//float sinOfFloat(float floatA){
//    return sinf(floatA);
//}
//
////Finds if a number is larger than 10 function
//bool ifBiggerThanTen (int A){
//    if (A > 10){
//        return true;
//    } else {
//        return false;
//    }
//}
//
////Main function
//int main(int argc, const char * argv[])
//{
//    @autoreleasepool {
//        //local declarations
//        NSString *name = @"Mike";
//        int varInt = 2;
//        int secondInt = 4;
//        int thirdInt;
//        int getInt;
//        
//        float varFloat = 1.3;
//        float sinFloat;
//        
//        bool isBiggerTen;
//        
//        //Get user input
//        getInt = getIntegerFromConsole(@"Type an Integer: ");
//        NSLog(@"You entered %i ! \n\n\n", getInt);
//        
//        //helloThere to the user
//        helloThere(name, varInt, varFloat);
//        
//        // String declaration
//        NSString *aString;
//        aString = @"Good times!";
//        
//        NSLog(@"This class lasts a little more than %i hours", varInt);
//        NSLog(@"I've had about %f coffees today", varFloat);
//        NSLog(@"%@", aString);
//        
//        //Icrement integer
//        varInt = incrInteger(varInt);
//        NSLog(@"\n \n %i has been incremented by 1!", varInt);
//        
//        //Decremenet integer
//        varInt = decrInteger(varInt);
//        NSLog(@"\n \n %i has been decremented by 1!", varInt);
//        
//        //Add integers
//        thirdInt = addInts(varInt, secondInt);
//        NSLog(@"\n \n %i + %i = %i !", varInt, secondInt, thirdInt);
//        
//        //sin your Float
//        sinFloat = sinOfFloat(varFloat);
//        NSLog(@"\n \n Sin of %f is %f", varFloat, sinFloat);
//        
//        //Bigger than ten?
//        isBiggerTen = ifBiggerThanTen(getInt);
//        if (isBiggerTen){
//            NSLog(@"\n\n\n %i is bigger than ten!", getInt);
//        } else {
//            NSLog(@"\n\n\n %i is smaller than ten!", getInt);
//        }
//        
//        
//    }
//    
//
//    return 0;
//}



