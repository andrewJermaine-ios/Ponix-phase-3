//
//  MainVC.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
   
    @IBOutlet weak var monitorContainer: UIView!
    
    @IBOutlet weak var controlContainer: UIView!
    
    @IBOutlet weak var shopContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        }
    

    @IBAction func monitorPress(_ sender: Any) {
        monitorContainer.isHidden = false
        controlContainer.isHidden = true
        shopContainer.isHidden = true
    }
    
  
    @IBAction func controlPress(_ sender: Any) {
        monitorContainer.isHidden = true
        controlContainer.isHidden = false
        shopContainer.isHidden = true
    }
    
    @IBAction func shopPress(_ sender: Any) {
        monitorContainer.isHidden = true
        controlContainer.isHidden = true
        shopContainer.isHidden = false
    }
}
