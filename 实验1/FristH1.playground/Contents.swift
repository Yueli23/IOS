
//: Playground - noun: a place where people can play

var arr = [Int]() //初始化一个Int型的数组
for i in 2...10 {
    var isPrime = true
    for j in 2..<i {
        if i%j == 0 {
            isPrime = false
        }
    }
    if isPrime{
        arr.append(i)
    }
    
}
print(arr)

arr.sort { (x:Int,y: Int) -> Bool in
    return x>y
}

arr.sort { (x, y) -> Bool in
    return x>y
}

arr.sort { (x, y)  in
    return x>y
}

arr.sort(by: {$0 > $1})

arr.sort(by: <)


