//
//  MonitorVC.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import UIKit

class MonitorVC: UIViewController {
    
    
    var cityName: String?
    
    
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
        
    cityName = "Los Angeles, CA"
        
    }
    
    @IBAction func LVBtnPressed(_ sender: Any) {
        cityName = "Las Vegas, NV"

    }

    
    @IBAction func BostonBtnPressed(_ sender: Any) {
        cityName = "Boston, MA"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        cityName = "Las Vegas, NV"
//        let destinationVC = segue.destination as? CityVC
//        destinationVC?.cityNameLabel.text = "Las Vegas, NV"
    }
    
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        
    }
}
