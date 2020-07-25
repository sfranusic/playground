import Foundation

public extension Collection where Self == [Int] {
  func bubbleSorted() -> [Int] {
    guard self.count > 1 else {
        return self
    }
    
    var swapCount = 0
    var mutableA: [Int] = self
    for _ in 0...mutableA.count - 1 {
        for j in 0...mutableA.count - 2 {
            if mutableA[j] > mutableA[j + 1] {
                mutableA.swapAt(j, j + 1)
                swapCount += 1
            }
        }
    }
    
    print("""
        Array is sorted in \(swapCount) swaps.
        First Element: \(mutableA.first!)
        Last Element: \(mutableA.last!)
        """)
    return mutableA
  }
}


