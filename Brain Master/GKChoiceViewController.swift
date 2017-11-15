//
//  GKChoiceViewController.swift
//  Brain Master
//
//  Created by Navjot on 12/11/17.
//  Copyright © 2017 Sopan. All rights reserved.
//

import UIKit

class GKChoiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var ivalue:String = ""
    @IBAction func btnB(_ sender: UIButton) {
        ivalue = "15"
        self.performSegue(withIdentifier: "fromGK", sender: self)
        
    }
    
    @IBAction func btnI(_ sender: UIButton) {
        ivalue = "20"
        self.performSegue(withIdentifier: "fromGK", sender: self)
    }
    
    @IBAction func btnE(_ sender: UIButton) {
        ivalue = "25"
        self.performSegue(withIdentifier: "fromGK", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var object = segue.destination as? MainViewController
        object?.indexv = ivalue
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
