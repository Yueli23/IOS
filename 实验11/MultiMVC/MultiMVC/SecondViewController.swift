//
//  SecondViewController.swift
//  MultiMVC
//
//  Created by 南希 on 2018/12/17.
//  Copyright © 2018年 nanxi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
//    var name = ""
//    var no = ""
//
  //  var delegate: StudentProtocol?
    
    var stu:Student!
    
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNo.text = stu.no
        tfName.text = stu.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        
        stu.no = tfNo.text!
        stu.name = tfName.text!
//        delegate?.change(name: name, no: no)
        
//        for vc in self.navigationController!.viewControllers{
//            if let firstVC = vc as? FirstViewController{
//            firstVC.no = no
//            firstVC.name = name
//            }
//        }
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
