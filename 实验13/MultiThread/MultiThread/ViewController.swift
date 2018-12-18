//
//  ViewController.swift
//  MultiThread
//
//  Created by 南希 on 2018/12/18.
//  Copyright © 2018年 nanxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (Timer) in
            self.count += 1
            self.countLabel.text = "count:\(self.count)"
        }
    }

    @IBAction func sum(_ sender: Any) {
        var sum = 0
        DispatchQueue.global().async{
            
            for i in 1...999999999999{
                sum += i
                DispatchQueue.main.async {
                    self.sumLabel.text = "\(sum)"
                }
                
            }
        }
        
       
      
    }
    
}

