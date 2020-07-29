import Foundation

/*

 Create a function to count how many times a single digit integer
 appears in a string.

 let testString = "[127126489127491827499767546235041908350]"

 */

func countOccurrence(inputString: String) -> [Int] {
    // Use an array's indices as keys for the count.
    var countArray = Array(repeating: 0, count: 10)

    for char in inputString {
        if let singleInt = Int(String(char)) {
            countArray[singleInt] += 1
        }
    }
    return countArray
}

func countOccurrence(snippet: String, fullString: String) -> Int {
    var mutableString = fullString
    mutableString = mutableString.replacingOccurrences(of: snippet, with: "")
    return (fullString.count - mutableString.count) / snippet.count
}
