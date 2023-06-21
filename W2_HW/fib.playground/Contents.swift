import UIKit

// fib function
// assuming that n != 0
func fib(_ n: Int) -> Int{
    if (n <= 1){
        return n
    }
    else{
        return fib(n-1) + fib(n-2)
    }
}

// for finding sub arrays
func fib_subArray(_ input: Int, _ count: Int) -> [Int]{
    var final_arr = [Int]() // array that will hold sub array w/ fib nums
    
    // for count, run fib on input number + count
    for f in 0..<count {
        final_arr.append(fib((input + f)))
    }
    
    if(final_arr.contains(input)){ // if final_arr contains input
        return final_arr // final arr is returned with sub array
    }
    else { // turn final_arr empty and return that
        final_arr = [Int]()
        return final_arr
    }
}

print(fib_subArray(5, 3))
