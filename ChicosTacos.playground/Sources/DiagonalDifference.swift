import Foundation

public func diagonalDifference(a: [[Int]]) -> Int {
  
  guard a.count > 0 else {
    return 0
  }
  
  // Guard that matrix has even width and height
  guard a.count == a[0].count else {
    return 0
  }
  
  let n = a.count - 1
  
  //Top left to bottom right diagonal
  var diagonal1 = 0
  for i in 0...n {
    diagonal1 += a[i][i]
  }
  
  //Bottom left to top right diagonal
  var diagonal2 = 0
  for i in 0...n {
    diagonal2 += a[n - i][i]
  }
  
  
  print("""
    sum of diagonal1 = \(diagonal1)
    sum of diagonal2 = \(diagonal2)
    aboslute sum of both = \(abs(diagonal1) >= abs(diagonal2) ? abs(diagonal1) - abs(diagonal2) : abs(diagonal2) - abs(diagonal1))
""")
  return abs(diagonal1) >= abs(diagonal2) ? abs(diagonal1) - abs(diagonal2) : abs(diagonal2) - abs(diagonal1)
}
