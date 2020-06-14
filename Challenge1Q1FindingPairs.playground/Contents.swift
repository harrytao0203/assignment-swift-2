//
//  FindingPairs function
//  Game of Apps Development Interview Challenge 1 Question 1
//  June 2020
//  Harry Tao
//  Created by Harry T on 2020-06-13.
//


import UIKit

let targetSum = 6
let testArray = [2, 4, 5, 1, 3, 5, 4]
let test2 = [1,2,4,4,7,5,3]
let test3 = [2,5,4,2,3,1,7,9,3,9,3]
let test4 = [100, 234, 213423, 23, 345, 23, 23, 33]
let test5 = [1,5,7,-1]



struct customTupleType: Hashable {
    let firstNumber: Int
    let secondNumber: Int
    
    init(first: Int, second: Int) {
        if first < second {
            firstNumber = first
            secondNumber = second
        } else {
            secondNumber = first
            firstNumber = second
        }
    }
}

func findPairs (in array: [Int], withSum sum: Int) {
    
    if array.count == 0 {
        print("empty array, no solution")
        return
    }
    var sortedArray = array
    sortedArray.sort()
    var leftIndex = 0
    var rightIndex = sortedArray.count - 1
    var mySet = Set<customTupleType>()
    while leftIndex < rightIndex {
        let sumAtTwoIndexes = sortedArray[leftIndex] + sortedArray[rightIndex]
        if sumAtTwoIndexes  == sum  {
            mySet.insert(customTupleType(first: sortedArray[leftIndex], second: sortedArray[rightIndex]))
            leftIndex += 1
            rightIndex -= 1
        } else if sumAtTwoIndexes > sum {
           rightIndex -= 1
        } else {
            leftIndex += 1
        }
    }
    if mySet.isEmpty {
        print("No solution")
        return
    }
    for items in mySet {
        print((items.firstNumber, items.secondNumber))
    }
    return
}

print("First Test")
findPairs(in: testArray, withSum: targetSum)

print("Second Test")
findPairs(in: test2, withSum: targetSum)

print("Third Test")
findPairs(in: test3, withSum: targetSum)

print("Fourth Test")
findPairs(in: test4, withSum: targetSum)

print("Fifth Test")
findPairs(in: test5, withSum: targetSum)

print("Sixth Test")
findPairs(in: [], withSum: targetSum)
