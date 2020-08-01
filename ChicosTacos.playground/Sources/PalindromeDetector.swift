import Foundation
import XCTest

public extension String {

    var isPalindrome: Bool {
        let potentialCase = Array(self)
        let count: Int = potentialCase.count - 1
        var firstHalf = String()
        var reversedSecondHalf = String()

        func shouldUseElement(_ element: String) -> Bool {
            switch element {
            case ",", "?", " ":
                return false

            default:
                return true
            }
        }

        for i in 0...count / 2 {

            let first = potentialCase[i].lowercased()
            let last = potentialCase[count - i].lowercased()

            if shouldUseElement(first) {
                firstHalf.append(first)
            }
            if shouldUseElement(last) {
                reversedSecondHalf.append(last)
            }
        }

        return firstHalf == reversedSecondHalf
    }
}

// MARK: - Unit tests

public class PalindromeTests: XCTestCase {
    let validCases: [String] = [
        "Red rum, sir, is murder",
        "I did, did I?",
        "kayak",
        "No lemon, no melon",
        "Rotor",
        "Step on no pets"
    ]

    let invalidCases: [String] = [
        "Red rum",
        "No doubt you doubt no"
    ]

    func testValidCases() {
        for validCase in validCases {
            XCTAssertTrue(validCase.isPalindrome)
        }
    }

    func testInvalidCases() {
        for invalidCase in invalidCases {
            XCTAssertFalse(invalidCase.isPalindrome)
        }
    }
}
