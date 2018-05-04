//
//  timurcio.swift
//  FractionAction
//
//  Created by Becker, Dylan on 2018-05-01.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation
import Foundation

func fractionSimplifier(_ numerator: Int, _ denominator: Int) -> Int{
    var variableForNumerator = numerator
    var variableForDenominator = denominator
    if numerator == 0 && denominator != 0 {
        print("your fraction is 0.")
    } else if denominator == 0 {
        print("the fraction you have input does not exist. Go to Gordon.")
    }
    
    let remainder2 = variableForDenominator % variableForNumerator
    let quotient2 = variableForDenominator / variableForNumerator
    
    if remainder2 == 0 {
        print("1/\(quotient2)")
    }
    
    var arrayForNums : [Int] = []
    var arrayForDens : [Int] = []
    
    for i in 1...variableForNumerator {
        if variableForNumerator % i == 0 {
            arrayForNums.append(i)
        }
    }
    for j in 1...variableForDenominator {
        if variableForDenominator % j == 0 {
            arrayForDens.append(j)
        }
    }
    
    for z in 0...arrayForNums.count - 1 {
        for x in 0...arrayForDens.count - 1 {
            if arrayForNums[z] == arrayForDens[x] {
                variableForNumerator /= arrayForNums[z]
                variableForDenominator /= arrayForNums[z]
                if variableForNumerator < variableForDenominator {
                    print("\(variableForNumerator) / \(variableForDenominator)")
                }
                else if variableForNumerator > variableForDenominator {
                    let advancedRemainder1 = variableForNumerator % variableForDenominator
                    let advancedQuotient1 = variableForNumerator / variableForDenominator
                    if advancedRemainder1 == 0 {
                        print(advancedQuotient1)
                        return 0
                    }
                    print("\(advancedQuotient1)  \(advancedRemainder1)/\(variableForDenominator)")
                }
            }
        }
    }
}

