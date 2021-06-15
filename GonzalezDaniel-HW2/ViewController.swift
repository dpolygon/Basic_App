//
//  ViewController.swift
//  Project: GonzalezDaniel-HW2
//  EID: Dg37584
//  Course: CS371L
//
//  Created by Daniel Gonzalez on 6/14/21.
//

import UIKit

class ViewController: UIViewController {

    // variables used on the login page
    @IBOutlet weak var userIDField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginStatusField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // if any fields are left empty an invalid login message will be displayed for user to read
    @IBAction func buttonPressed(_ sender: Any) {
        if userIDField.text == "" || passwordField.text == "" {
            loginStatusField.text = "Invalid login"
        } else {
            loginStatusField.text = userIDField.text! + " logged in"
        }
    }
    
    // code to enable tapping on the background to remove software keyboard
    func textFieldShouldReturn(textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

