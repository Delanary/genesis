//
//  Page2ndViewController.swift
//  genesis
//
//  Created by Dmitry Rybochkin on 10.09.17.
//  Copyright © 2017 Dmitry Rybochkin. All rights reserved.
//

import UIKit

class Page2ndViewController: UIViewController {

    
    @IBOutlet weak var testLabel: UILabel!
    var temp = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = temp
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(){
    
        dismiss(animated: true, completion: nil)
        
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
