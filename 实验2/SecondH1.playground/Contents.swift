//: Playground - noun: a place where people can play


//用map函数返回name字符串数组
let Dic = [["name":"li","age":"22"],["name":"zhang","age":"19"],["name":"xiang","age":"26"]]

var arr = Dic.map{$0["name"]}
print(arr)

//给定数组，用filter函数选出能被转换成int的字符串
let Arr:[String] = ["sdfv","13515","86dfbv"]
let choice = Arr.filter { (Arr) -> Bool in
    return (Int(Arr) != nil)
}

print(choice)

//用reduce把string中的元素连接成字符串，以逗号分隔
//let char = Arr.reduce(Result) (0,{$0,$1})
//一次求整数数组的最大值，最小值，总数和

var reduces = Arr.reduce(""){
    text,name in "\(text)\(name),"
}
reduces.removeLast()
print(reduces)



let arrays = [1,3,1,1,1,5,1]
let tuple = arrays.reduce((max:arrays[0], min:arrays[0],sum:0)){
    (max($0.max,$1),min($0.min,$1),$0.sum+$1)
}
print(tuple)

//新建一个函数数组，从数组中找出一个整数，返回值为一个整数的所有函数
func first()->Int{
    return 2
}
func second()->Int{
    return 6
}
func third()->Int{
    return 41
}
var fun:[Any] = [first(),second(),third()]
for (key,value) in fun.enumerated() {
    if value is (Int)->Int{
        print("\(key)")
    }
}

////拓展Int，增加sqrt，可以计算int的sqrt值并返回浮点数
//extension Int{
//    func Sqrt() -> Double{
//        return sqrt(Double(self))
//        
//    }
//}
//
//func powerfulFunc<T:Comparable>(a:T...)->(T,T){
//    return a.reduce(max:a[0], {max($0.max,$1);,min($0.min,$1)})
//    
//}
