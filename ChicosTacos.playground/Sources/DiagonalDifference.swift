import Foundation

public func diagonalDifference(arr: [[Int]]) -> Int {

  let n = arr.count - 1
  var difference = 0
  
  for i in 0...n {
    difference += (arr[i][i] - arr[i][n - i])
  }
  
  return abs(difference)
}
