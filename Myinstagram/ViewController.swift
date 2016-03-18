//
//  ViewController.swift
//  Myinstagram
//
//  Created by WebEngineering on 3/3/2559 BE.
//  Copyright © 2559 ploynicha Rodpia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textusername: UITextField!
    @IBOutlet weak var textemail: UITextField!
    @IBOutlet weak var textpassword: UITextField!
    @IBOutlet weak var textrepassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonsignupOnClick() {
        if textpassword.text == textrepassword.text{
            let kumuAPI = Kumulos()
            kumuAPI.createUserWithUsername(textusername.text, andPassword: textpassword.text, andEmail: textemail.text, andAuthdata: "test")
                }
    }
    @IBAction func buttoncancel() {
        textusername.text  = ""
        textemail.text  = ""
        textpassword.text  = ""
        textrepassword.text  = ""
        
    }
}

