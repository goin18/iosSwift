//
//  SecondViewController.swift
//  To do List
//
//  Created by Marko Budal on 05/06/14.
//  Copyright (c) 2014 Goin Developer. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var textTask : UITextField
    @IBOutlet var textDesc : UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }

    @IBAction func buttonClick(sender : UIButton) {
       // print("test:" + textDesc.text);
        taskMgr.addTask(textTask.text, desc: textDesc.text)
        self.view.endEditing(true)
        textDesc.text = ""
        textTask.text = ""
        self.tabBarController.selectedIndex = 0
    }
    
    
}

