

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

//Helped A LOT by Reyn(e)/(a)rd, Avanish, Christian, Kevin, Isaac (myself), and Pranav
// they xplained everything to me and I used my big braen to lern everything
//Add your code below:

var pass = 0
var swap = 0
var all = 0

var sortInt = unsortedIntegers

func swap(sorted: inout [Int], index: Int, smallest: Int){
    sorted.swapAt(index, smallest)
    swap += 1
    pass += 1
    eqz += 1
}

print("Pass: \(pass), Swaps: \(swap)/\(all), Array: \(sortInt)")

var eqz = 0
var Min = 0
func selection(sortInt: inout [Int]){
    for i in eqz..<sortInt.count{
        Min = i
        for int in eqz ..< sortInt.count{
            if sortInt[Min] > sortInt[int]{
                Min = int
            }

        }
    }
    swap(sorted: &sortInt, index:eqz, smallest: Min)
}


while pass != sortInt.count - 1{
    selection(sortInt: &sortInt)
    all += swap
    print("Pass: \(pass), Swaps: \(swap)/\(all), Array: \(sortInt)")
    swap = 0
}
