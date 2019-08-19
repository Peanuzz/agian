//
//  ShowNameViewController.swift
//  BuggyApp
//
//  Created by Peanuz on 19/8/2562 BE.
//  Copyright © 2562 scbeasy. All rights reserved.
//

import UIKit

class ShowNameViewController: UIViewController {
    
    @IBOutlet weak var mName:UILabel!
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mName.text = name
        
    }

}
