//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let fileManager=FileManager.default
if var docPath=fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
{
     docPath.appendPathComponent("3.jpg")
    if !fileManager.fileExists(atPath: docPath.path){
        let imageUrl=URL(string: "http://txt25-2.book118.com/2017/0922/book134724/134723007.jpg")
        let imageData=try Data(contentsOf: imageUrl!)
        _=UIImage(data: imageData)
        docPath.appendPathComponent("3.jpg")
        try imageData.write(to:docPath)
    }else{
        let imageData=try Data(contentsOf: docPath)
        _=UIImage(data: imageData)
    }
}
