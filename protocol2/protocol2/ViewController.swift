//
//  ViewController.swift
//  protocol2
//
//  Created by agile on 3/1/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Myprotocol {
   
    
func implimant(fcolour: UIColor) {
    objview.backgroundColor = fcolour
}
    @IBOutlet var objview: UIView!
    
    @IBOutlet var lblFirst: UILabel!
    @IBAction func done(_ sender: UIButton) {
        let objstr = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        objstr.delegate = self
        
        present(objstr, animated: true, completion: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

