//
//  ControlVC.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import UIKit

class ControlVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LABtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "toControlSystems", sender: nil)
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        
    }

}
