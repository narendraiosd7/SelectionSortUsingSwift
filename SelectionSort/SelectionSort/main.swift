import Foundation

func selectionSort(_ nums: inout [Int]) {
  for i in 0..<nums.count - 1 {
    var minIndex = i
    
    for j in i + 1..<nums.count {
      if nums[j] < nums[minIndex] {
        minIndex = j
      }
    }
    
    if minIndex != i {
      nums.swapAt(i, minIndex)
    }
  }
}

var numbers = [64, 34, 25, 12, 22, 11, 90]
print("Before sorting \(numbers)")
selectionSort(&numbers)
print("After sorting \(numbers)")
