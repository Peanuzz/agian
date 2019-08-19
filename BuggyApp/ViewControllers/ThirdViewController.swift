//
//  ThirdViewController.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    var name:String!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//        if segue.identifier == "data"
//        {
//            let vc = segue.destination as! ShowNameViewController
//            vc.name = nameTextField.text!
//            self.performSegue(withIdentifier: "data", sender: nil)
//        }
//    }
    
//    @IBAction func enter(sender:UIStoryboardSegue){
//        let vc = sender.destination as! ShowNameViewController
//        vc.name = nameTextField.text!
//        navigationController?.pushViewController(vc, animated: true)
//    }
//    @IBAction func inputName(_ sender: Any) {
//        self.performSegue(withIdentifier: "data", sender: nil)
//        let vc = sender
//        vc.name = nameTextField.text!
//    }
    
    @IBAction func inputName(_ sender: UIButton) {
//        let vc =  name as! ShowNameViewController
        self.performSegue(withIdentifier: "data", sender: nil)
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "data") {
            let svc = segue.destination as! ShowNameViewController
            svc.name = nameTextField.text
        }
    }
}
