//: Playground - noun: a place where people can play

import UIKit

func readAndSearchForAnagrams(){
    // Read Strings
    //var stringOne = readLine()!
    let fstString = "cde"
    print(fstString)
    //var stringTwo = readLine()!
    let sndString = "abc"
    print(sndString)
    let caractersCount = charactersToDeleteToBeAnagrams(from: fstString, with: sndString)
    print(caractersCount)
}

// Enter your code here
func charactersToDeleteToBeAnagrams(from firstString:String, with secondString:String) -> Int {
    var stringOne = firstString
    var stringTwo = secondString
    var counter = 0
    // Search if each character of strig one exist in string two
    for index in firstString.characters.indices {
        if let indexInStringTwo = stringTwo.characters.index(of:firstString[index]) {
            // if exist remove it from second string
            counter += 2
            stringTwo.remove(at:indexInStringTwo)
        }
    }
    // Concatenate both stings and return the amount of characters.
    let completeString = firstString + secondString
    return completeString.characters.count - counter
}

readAndSearchForAnagrams()

// Test with
//15 17
//o l x imjaw bee khmla v o v o imjaw l khmla imjaw x
//imjaw l khmla x imjaw o l l o khmla v bee o o imjaw imjaw o
// Enter your code here
func canCreateUntraceableReplica() -> String {
    // Read lines
    print("Hash Tables Problem")
    func readInput(_ inputString:String) -> [String]{
        //return (readLine()?.componentsSeparatedByString(" "))!
        //return (readLine()?.components(separatedBy: " "))!
        return (inputString.components(separatedBy: " "))
    }
    
    _ = readInput("6 4")
    //let magazineSize = Int(arraySizes[0])
    //let noteSize = Int(arraySizes[1])
    
    // Store magazine words in an array
    let magazineWords = readInput("give me one one grand today night")
    var magazineWordsDict = [String:Int]()
    for magazineWord in magazineWords{
        magazineWordsDict[magazineWord] = (magazineWordsDict[magazineWord] ?? 0) + 1
    }
    print(magazineWordsDict)
    
    // Check for the existence of each word of the ransom note in the magazine array
    let noteWords = readInput("give one one one grand today")
    for word in noteWords {
        if let amountOfThisWordInMagazine = magazineWordsDict[word] {
            if (amountOfThisWordInMagazine < 1) {
                return "No"
            }else{
                magazineWordsDict[word]! -= 1
            }
        }else{
            return "No"
        }
        
    }
    return "Yes"
}

print(canCreateUntraceableReplica())





