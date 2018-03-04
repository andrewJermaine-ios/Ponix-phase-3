//
//  MonitorVC.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import UIKit

class MonitorVC: UIViewController {
    
    
   
    
    
    @IBOutlet weak var calendarView: UIViewShadow!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func LABtnPressed(_ sender: Any) {
    performSegue(withIdentifier: "fromLA", sender: nil)
    }
    
    @IBAction func LVBtnPressed(_ sender: Any) {
    }
    
    @IBAction func BostonBtnPressed(_ sender: Any) {
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        
    }
}
