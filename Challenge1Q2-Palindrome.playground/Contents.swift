//
//  IsPalindrome function
//  Game of Apps Development Interview Challenges 1 Question 2
//  June 2020
//  Harry Tao
//  Created by Harry T on 2020-06-13.
//

import UIKit

func isPalindrome(_ word: String) -> Bool {
    // get the length of the word and store in temp
    let nilstring: String? = nil
    if word == nilstring || word.isEmpty {
        print("empty string or nil, false")
        return false
    }

    let characters = Array(word)
    
    var leftIndex = 0
    var rightIndex = word.count - 1
    
    while leftIndex < rightIndex {
        if characters[leftIndex] != characters[rightIndex]{
            print(false)
            return false;
        }
        leftIndex += 1
        rightIndex -= 1
    }
    print(true)
    return true;
}



// Test Cases
print("Test Case 1")
isPalindrome("radar")
print("Test Case 2")
isPalindrome("asddsa")
print("Test Case 3")
isPalindrome("asdfdsa")
print("Test Case 4")
isPalindrome("bob")
print("Test Case 5")
isPalindrome("wljkcmsdsn")
print("Test Case 6")
isPalindrome("")
