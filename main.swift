

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

//Helped A LOT by Reyn(e)/(a)rd, Avanish, Christian, Kevin, Isaac (myself), and Pranav, and Onik (unintentonally hahahha)
// they xplained everything to me and I used my big braen to lern everything
//Add your code below:
import Foundation

var min = 0
var arr : [String] = []

while let line = readLine() {
    arr.append(line)
}

for i in 0 ..< arr.count {
    min = i

    for j in (i + 1) ..< arr.count {
        if arr[j] < arr[min] {
            min = j
        }
    }
    if (min != i) {
        swapAt(array: &arr, index: i, minIndex: min)
    }
}

for line in arr {
    print(line)
}

func swapAt(array: inout [String], index: Int, minIndex: Int) {
    let temp = array[index]
    array[index] = array[minIndex]
    array[minIndex] = temp
}
