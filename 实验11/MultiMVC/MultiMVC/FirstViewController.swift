//
//  ViewController.swift
//  MultiMVC
//
//  Created by 南希 on 2018/12/17.
//  Copyright © 2018年 nanxi. All rights reserved.
//

import UIKit

//protocol StudentProtocol {
//    func change(name:String,no:String)
//}

class FirstViewController: UIViewController {
//    func change(name: String, no: String) {
//        self.name = name
//        self.no = no
//    }
    
//
//    var name = ""
//    var no = ""
//
    
     var stu = Student()
    
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tfNo.text = stu.no
        tfName.text = stu.name
    }

    @IBAction func showSecondVC(_ sender: Any) {
        
        
        stu.no = tfNo.text!
        stu.name = tfName.text!
        
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
//        present(secVC, animated: true, completion: nil)
//        secVC.no = stu.no
//        secVC.name = stu.name
//        secVC.delegate = self
            secVC.stu = stu
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        present(thirdVC, animated: true, completion: nil)
    }
}

