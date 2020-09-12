import UIKit

//No 1
func Factorial(number: Int) -> String {
    var total = 1
    var process = ""
    
    for i in stride(from: number, to: 0, by: -1) {
        total *= i
        if (i == 1) {
            process += String(i)
        }else {
            process = process + String(i) + "*"
        }
    }


    return String(number) + "! (" + process + ") = " + String(total)
}

print("No 1: ")
print(Factorial(number: 7))
print("=================================================================")
print("")

//

//No 2
func ValueLevel(number: String){
    for i in stride(from: number.count, to: 0, by: -1) {
        for _ in stride(from: i, to: number.count, by: +1) {
            print(" ", terminator:"")
        }

        for b in stride(from: i, to: 0, by: -1) {
            if(b != i) {
                print(0, terminator:"")
            } else {
                let index = number.index(number.startIndex, offsetBy: number.count - b)
                let char: Character = number[index]
                
                print(char, terminator:"")
            }
        }

        print("")
    }
}

print("No 2: ")
ValueLevel(number: "123456")
print("=================================================================")
print("")

//=================================================================

//No 3
