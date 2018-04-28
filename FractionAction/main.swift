//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
// Read input
// Loop forever until valid input is found
var numerator = -1
while 1 == 1 {
    
    // Prompt for numerator?
    print("Numerator?")
    
    //  Test #1 Wait for input and at the same time ensure input is not nil.
    guard let validInput = readLine() else {
        // If we got inside this structure we have nil input so we should not do any more tests, just prompt again.
            continue
    }
    
    // Test #2 Is it an integer ?
    guard let givenInteger = Int(validInput) else {
        // if we got here inside the structure we have input
        // that cannot be made into an integer.
        continue // ensure
    }

    // Test #3 is it less than 0
    if givenInteger < 0  {
        continue
    }
    
    // If all three tests pass, proceed
    numerator = givenInteger
    break // stop the while loop
    
}
var denominator = -1
while 1 == 1 {

    // Prompt for denominator?
    print("Denominator?")
    
    // Test 1 Wait for denominator, ensure input is valid (not nil)
    guard let validInput = readLine() else{
        continue
    }
   
    // Test 2 Is it an integer
    guard let givenInteger = Int (validInput) else{
        continue
    }

    //Test 3 is it less or greater than 1
    
    if givenInteger >= 1 {
        continue
        
        }

//if all tests passed continue (proceed)
    denominator = givenInteger
    break // stop while loop
}


// PROCESS
// Implement the primary logic of the problem here
// Get Started to get quotient and remainder

let remainder = numerator % denominator
let quotient = numerator / denominator

//Is it a whole number
if remainder == 0 {
  
    
// We have a whole number
    print("The result is:")
    print(quotient)
} else {
// WE MUST REDUCE
// loop backwards from the halfway point of the numerator
// Loop backwards form halfway point of 8
// 4,3,2
    var GCF = -1
    for i in stride(from: remainder / 2, to: 2, by: -1){
  // When the counter vairable "i" evenly divides into both
        // the remaijnder and the original denominator ... we have the GCF
        
        if remainder % i == 0 && validDenominator % i == 0 {
            
            GCF = i
            break //stop the loop
            
        }
    }
    print(GCF)
    
    // Print the reduced

}

// OUTPUT
// Report results to the user here



