//
//  ThirdViewController.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var nameTextField: UITextField!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    self.nameTextField.delegate = self
    // Do any additional setup after loading the view.
  }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            textField.resignFirstResponder()
            return false
        }
        return true
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "data") {
            let svc = segue.destination as! ShowNameViewController
            svc.name = nameTextField.text!
            
        }
    }
}
