//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by 南希 on 2018/12/18.
//  Copyright © 2018年 nanxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var name: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func add(_ sender: Any) {
        let person = Person(context: context)
        person.name = "lgy"
        person.phone = "123465487"
        appDelegate.saveContext()
        
    }
    
    @IBAction func update(_ sender: Any) {
    }
    
    @IBAction func del(_ sender: Any) {
    }
    
    @IBAction func query(_ sender: Any) {
    }
}

