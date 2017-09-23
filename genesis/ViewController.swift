//
//  ViewController.swift
//  genesis
//
//  Created by Dmitry Rybochkin on 10.09.17.
//  Copyright © 2017 Dmitry Rybochkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testButton: UIButton!
    
    var user1: Male?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user1 = Male()
        
        user1?.firstName = "Petya"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func testFunction(_ sender: UIButton){
        
        let userTitle: String = self.user1?.firstName ?? "unknow"
        
        guard let userName = self.user1?.firstName else {
            return
        }
        sender.setTitle("user1: \(userName) \(userTitle)", for: .normal)
        performSegue(withIdentifier:"toPage2ndViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewcontroller = segue.destination as? Page2ndViewController {
            viewcontroller.temp += "KUKAREKU"
        }
    }
}

