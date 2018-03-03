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
    
    @IBOutlet weak var monitorBtn: UIButton!
    
    @IBOutlet weak var controlBtn: UIButton!
    
    @IBOutlet weak var shopBtn: UIButton!
    
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
        
        monitorBtn.layer.backgroundColor = #colorLiteral(red: 0.737254902, green: 0.8196078431, blue: 0.537254902, alpha: 1)
        controlBtn.layer.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.7607843137, blue: 0.1882352941, alpha: 1)
        shopBtn.layer.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.7607843137, blue: 0.1882352941, alpha: 1)
        
    }
    
  
    @IBAction func controlPress(_ sender: Any) {
        monitorContainer.isHidden = true
        controlContainer.isHidden = false
        shopContainer.isHidden = true
        
        monitorBtn.layer.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.7607843137, blue: 0.1882352941, alpha: 1)
        controlBtn.layer.backgroundColor = #colorLiteral(red: 0.737254902, green: 0.8196078431, blue: 0.537254902, alpha: 1)
        shopBtn.layer.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.7607843137, blue: 0.1882352941, alpha: 1)
    }
    
    @IBAction func shopPress(_ sender: Any) {
        monitorContainer.isHidden = true
        controlContainer.isHidden = true
        shopContainer.isHidden = false
        
        monitorBtn.layer.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.7607843137, blue: 0.1882352941, alpha: 1)
        controlBtn.layer.backgroundColor = #colorLiteral(red: 0.6078431373, green: 0.7607843137, blue: 0.1882352941, alpha: 1)
        shopBtn.layer.backgroundColor = #colorLiteral(red: 0.737254902, green: 0.8196078431, blue: 0.537254902, alpha: 1)
    }
}
