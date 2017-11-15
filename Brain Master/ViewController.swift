//
//  ViewController.swift
//  Brain Master
//
//  Created by Navjot on 12/11/17.
//  Copyright © 2017 Sopan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var uname: UITextField!
    @IBAction func intend(_ sender: UIButton) {
                self.performSegue(withIdentifier: "toView2", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var object = segue.destination as? View2Controller
        object?.name = uname.text!
    }
    
}

