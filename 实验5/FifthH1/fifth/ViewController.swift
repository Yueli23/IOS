//
//  SecondViewController.swift
//  FifthH1
//
//  Created by 南希 on 2018/12/18.
//  Copyright © 2018年 nanxi. All rights reserved.
//


import UIKit


class ViewController: UIViewController {

    
     override func viewDidLoad() {
  
      super.viewDidLoad()
       

       self.view.backgroundColor = UIColor.orange
     
   
    let label = UILabel(frame: CGRect(x: 200, y: 200, width: 200, height: 100))
     
       label.text = "Hello World"
      
       label.backgroundColor = UIColor.green
       
       label.textAlignment = .center
       
       label.center = view.center
      
       self.view.addSubview(label)
      
       let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 20))
       
       button.setTitle("Cliked Me", for: .normal)

       button.setTitle("I am Cliked", for: .highlighted)
        
      
       button.setTitleColor(UIColor.blue, for: .normal)
        
      view.addSubview(button)
        
        
       
      button.addTarget(self, action: #selector(btnCliked), for: .touchUpInside)
   
     }
      
   @IBAction  func btnCliked(){
           
        if let label = view.subviews.first as? UILabel{
              
        label.text = "I am Cliked"
     
   }
        
      
   present(secondViewController(), animated: true, completion: nil)
 
    }

 }
