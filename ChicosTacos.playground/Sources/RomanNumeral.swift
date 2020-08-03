import Foundation
import XCTest

public func romanNumeral(_ number: Int) -> String? {

    guard number < 10000 else {
        print("Roman numerals above 10000 not supported currently.")
        return nil
    }

    switch number {

    case 1000...10000:
        let remainder = number % 1000
        return "\(String(Array(repeating: "M", count: number / 1000)))\(romanNumeral(remainder) ?? "")"

    case 900...999:
        // Special case.
        return "CM\(romanNumeral(number - 900) ?? "")"

    case 500...899:
        let remainder = number % 500
        return "\(String(Array(repeating: "D", count: number / 500)))\(romanNumeral(remainder) ?? "")"

    case 400...499:
        // Special case.
        return "CD\(romanNumeral(number - 400) ?? "")"

    case 100...399:
        let remainder = number % 100
        return "\(String(Array(repeating: "C", count: number / 100)))\(romanNumeral(remainder) ?? "")"

    case 90...99:
        // Special case.
        return "XC\(romanNumeral(number - 90) ?? "")"

    case 50...89:
        let remainder = number % 50
        return "\(String(Array(repeating: "L", count: number / 50)))\(romanNumeral(remainder) ?? "")"

    case 40...49:
        // Special case.
        return "XL\(romanNumeral(number - 40) ?? "")"

    case 10...39:
        let remainder = number % 10
        return "\(String(Array(repeating: "X", count: number / 10)))\(romanNumeral(remainder) ?? "")"

    case 9:
        // Special case.
        return "IX"

    case 5...8:
        let remainder = number % 5
        return "\(String(Array(repeating: "V", count: number / 5)))\(romanNumeral(remainder) ?? "")"

    case 4:
        // Special case.
        return "IV"

    case 1...3:
        let remainder = number % 1
        return "\(String(Array(repeating: "I", count: number / 1)))\(romanNumeral(remainder) ?? "")"

    case 0:
        return ""

    default:
        return nil
    }
}

// MARK: - Unit Tests
public class RomanNumeralTests: XCTestCase {

    public func testRomanNumeralCases() {

        let cases: [Int: String] = [
            999: "CMXCIX",
            444: "CDXLIV",
            9: "IX",
            8: "VIII",
            0: ""
        ]

        for (number, answerString) in cases {
            let generatedString = romanNumeral(number) ?? ""
            XCTAssert(generatedString == answerString,
                      "Generated string was \(generatedString) but should be \(answerString)")
        }
    }
}
