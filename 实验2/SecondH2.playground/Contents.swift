//: Playground - noun: a place where people can play

enum Gender{
    case male,famale
    
    static func >(lhs:Gender,rhs:Gender)->Bool{
        return lhs.hashValue < rhs.hashValue
    }
}
enum Enum{
    case math
    case chinese
    case English
    case null
}
protocol SchoolProtocol{
    var department : Enum{get set}
    mutating func lendBook()
}
class Person:CustomStringConvertible{  //创建一个类
    var firstName :String
    var lastName : String
    var age :Int
    var gender : Gender
    var fullName : String{
        get{
            return firstName + " " + lastName
        }//属性可以有getter和setter，称之为计算属性
    }
    //指定构造函数构造
    init(firstName:String,lastName:String,age:Int,gender:Gender) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
    //便利构造器
    convenience init(firstName:String){
        self.init(firstName: firstName,lastName:"",age:18,gender:Gender.male)
    }
    
    //两个person实例对象用 ==和!=进行比较
    static func == (lhs:Person,rhs:Person) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.age == rhs.age && lhs.gender == rhs.gender
    }
    static func != (lhs:Person,rhs:Person) -> Bool {
        return !(lhs == rhs)
    }
    //增加run的方法
    func run() {
        print("Person \(fullName)  is running")
    }
    //Person实例可以直接用print输出
    var description:String{
        get{
            return "fullname：\(fullName),age：\(age),sex：\(gender)"
        }
    }
   
    
}

class Teacher:Person,SchoolProtocol{
    var title:String
    var department: Enum = Enum.null
    func lendBook() {
        print("teacher lead books")
    }
    
    init(title:String,firstName: String, lastName: String, age: Int, gender: Gender) {
        self.title = title
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
        
    }
    override func run() {
        print("Teacher \(fullName) is running")
    }
    override var description: String{
        get{
            return "fullname：\(fullName),age：\(age),sex：\(gender),title：\(title)"
        }
    }
    
}

class Student:Person,SchoolProtocol{
    var stuNO : Int
    var department: Enum = Enum.null
    func lendBook() {
        print("student lend book")
    }
    init(stuNO:Int,firstName: String, lastName: String, age: Int, gender: Gender) {
        self.stuNO = stuNO
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
    }
    override func run() {
        print("Student \(fullName) is running")
    }
    override var description: String{
        get{
            return "fullname：\(fullName),age：\(age),sex：\(gender),stuNO：\(stuNO)"
        }
        
    }
}

let p1 = Person(firstName: "zhang", lastName: "san", age: 34, gender: Gender.famale)
let p2 = Person(firstName: "wang", lastName: "xiaoyu", age: 36, gender: Gender.male)
let p3 = Person(firstName: "hu", lastName: "yujie", age: 34, gender: Gender.famale)

let t1 = Teacher(title: "shu", firstName: "feng", lastName: "lin", age: 38, gender: Gender.famale)
let t2 = Teacher(title: "ying", firstName: "huang", lastName: "xiaoying", age: 45, gender: Gender.male)
let t3 = Teacher(title: "yu", firstName: "zhang", lastName: "chunyan", age: 35, gender: Gender.famale)

let s1 = Student(stuNO: 201301, firstName: "li", lastName: "huixia", age: 17, gender: Gender.male)
let s2 = Student(stuNO: 201305, firstName: "chun", lastName: "ciwe", age: 16, gender: Gender.male)
let s3 = Student(stuNO: 201309, firstName: "su", lastName: "ziqing", age: 18, gender: Gender.famale)

var arr = [Person]()
arr.append(p1)
arr.append(p2)
arr.append(p3)
arr.append(t1)
arr.append(t2)
arr.append(t3)
arr.append(s1)
arr.append(s2)
arr.append(s3)

var occupations = [
    "Person":0,
    "Teacher":0,
    "Student":0,
]

for i in arr {
    if  i is Teacher{
        occupations["Teacher"]! += 1
    }else if i is Student{
        occupations["Student"]! += 1
    }else{
        occupations["Person"]! += 1
    }
}

for (key,value) in occupations{
    print("\(key) has \(value) items.")
}

// 按照年龄排序
arr.sort{return $0.age > $1.age}
for i in arr {
    print(i)
}

//按照fullname排序
arr.sort{return $0.fullName < $1.fullName}
for i in arr {
    print(i)
}

//按照gender+age的方法排序
//由于性别不可以直接比较，所以我们在最开始性别的枚举中重载>运算符
arr.sort{return ($0.gender > $1.gender) && ($0.age > $1.age)}
for i in arr{
    print(i)
}

for person in arr{
    if person is SchoolProtocol{
        person.run()
    }
}
