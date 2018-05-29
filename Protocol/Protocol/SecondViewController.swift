//
//  SecondViewController.swift
//  Protocol
//
//  Created by agile on 2/28/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

protocol myprotocol {
    func implimant(item : String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet var txtEnterItem: UITextField!
    @IBAction func btnsubmit(_ sender: UIButton) {
        if delegate != nil {
            if (txtEnterItem.text?.characters.count)! > 0 {
                 delegate?.implimant(item: txtEnterItem.text!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    var delegate:myprotocol? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
