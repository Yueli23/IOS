//
//  ViewController.swift
//  timerDemo2
//
//  Created by 南希 on 2018/11/26.
//  Copyright © 2018年 NanXi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additonal setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak weakSelf = self](mytimer) in weakSelf?.myView.center.x += 20
            
        })
    }


    @IBAction func btnClicked(_ sender: Any) {
        timer?.invalidate()
        UIView.animate(withDuration: 2, delay: 1, options: [.curveEaseInOut,.autoreverse,.repeat], animations: {
            self.myView.alpha = 0
            self.myView.center.x = self.view.bounds.width
            self.myView.backgroundColor = UIColor.blue
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)).scaledBy(x: 0.5, y: 0.5)
            self.myView.transform = CGAffineTransform.identity
        }){(finished) in
            if finished {
                self.myView.removeFromSuperview()
            }
            
            
        }
}

}
