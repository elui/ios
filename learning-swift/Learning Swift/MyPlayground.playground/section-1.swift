// Playground - noun: a place where people can play

import UIKit


var randonNum = arc4random() % 6

var arr = [1,3,4,5,10]

var result = 0

for (index, value) in enumerate(arr){
    result += arr[index]
}

for (var i = 0; i < arr.count; i++){
    result += arr[i]
}

println(result)



// Prime Numbers

var number = 5

var isPrime = true

for (var i = 2; i < number; i++){
    
    if (number % i == 0){
        isPrime = false
    }
}









