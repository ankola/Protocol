//
//  SecondViewController.swift
//  protocol2
//
//  Created by agile on 3/1/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

protocol Myprotocol {
    func implimant(fcolour : UIColor)
}





class SecondViewController: UIViewController {
    @IBOutlet var lblSecond: UILabel!
    var delegate: Myprotocol!
  
    @IBAction func btnyellow(_ sender: Any) {
        delegate.implimant(fcolour: (.red))
        dismiss(animated: true , completion: nil)

    }
    @IBAction func btnSecond(_ sender: UIButton) {
         delegate.implimant(fcolour: (.yellow))
        dismiss(animated: true , completion: nil)
     
        
    }
        
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
