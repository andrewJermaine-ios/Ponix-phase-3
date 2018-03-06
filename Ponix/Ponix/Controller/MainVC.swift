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
    
    @IBOutlet weak var cityContainer: UIView!
    
    @IBOutlet weak var monitorBtn: UIButton!
    
    @IBOutlet weak var controlBtn: UIButton!
    
    @IBOutlet weak var shopBtn: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        }
    
    @IBAction func burgerPressed(_ sender: Any) {
        titleLabel.text = "PONIX"
        titleLabel.textColor = #colorLiteral(red: 0.7137254902, green: 0.8235294118, blue: 0.5098039216, alpha: 1)
    }
    
    @IBAction func monitorPress(_ sender: Any) {
        monitorContainer.isHidden = false
        controlContainer.isHidden = true
        shopContainer.isHidden = true
        
        titleLabel.text = "MONITOR"
        titleLabel.textColor = #colorLiteral(red: 0.7233663201, green: 0.7233663201, blue: 0.7233663201, alpha: 1)
        
        

        
    }
    
  
    @IBAction func controlPress(_ sender: Any) {
        monitorContainer.isHidden = true
        controlContainer.isHidden = false
        shopContainer.isHidden = true
        
        titleLabel.text = "CONTROL"
        titleLabel.textColor = #colorLiteral(red: 0.7233663201, green: 0.7233663201, blue: 0.7233663201, alpha: 1)

        
        

    }
    
    @IBAction func shopPress(_ sender: Any) {
        monitorContainer.isHidden = true
        controlContainer.isHidden = true
        shopContainer.isHidden = false
        
        titleLabel.text = "SHOP"
        titleLabel.textColor = #colorLiteral(red: 0.7233663201, green: 0.7233663201, blue: 0.7233663201, alpha: 1)
        
        
    }
}
