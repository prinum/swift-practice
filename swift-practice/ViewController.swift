//
//  ViewController.swift
//  swift-practice
//
//  Created by 佐藤大地 on 2014/06/05.
//  Copyright (c) 2014年 佐藤大地. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var btn : UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func touch(sender : AnyObject) {
        NSLog("touch")
        //http://stackoverflow.com/questions/24022479/how-would-i-create-a-uialertview-in-swift
        var alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alert, animated: true, completion: nil)
        self.presentViewController(alert, animated: true, completion: {() -> Void in
            NSLog("alert completion" )
        })
    }
}

