//
//  ViewController.swift
//  Brain Master
//
//  Created by Navjot on 12/11/17.
//  Copyright © 2017 Sopan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action:#selector (ViewController.gestureAction))
        self.view.addGestureRecognizer(tapGesture)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    @objc func gestureAction(){
        self.view.endEditing(true)
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

