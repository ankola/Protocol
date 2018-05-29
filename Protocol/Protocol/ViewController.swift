//
//  ViewController.swift
//  Protocol
//
//  Created by agile on 2/28/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, myprotocol{
    func implimant(item: String) {
        lblShow.text = item
    }
    
    @IBOutlet var lblShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnAdd(_ sender: Any) {
        let objstoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secvc : SecondViewController = objstoryboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secvc.delegate = self
        present(secvc, animated: true, completion: nil)
        
//        let objstoryboard = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! ViewController
//       // objstoryboard.delegate
//        self.navigationController?.pushViewController(objstoryboard, animated: true)
//        

    }
    


}

