//
//  ControlVC.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import UIKit

class ControlVC: UIViewController, UITableViewDelegate, UITableViewDataSource, expandableHeaderViewDelegate {

    @IBOutlet weak var controlTableView: UITableView!
    
    var sections = [
        Section(cities: "LOS ANGELES, CA",
                harvest: ["NEXT HARVEST"],
                expanded: false),
        Section(cities: "LAS VEGAS, NV",
                harvest: ["NEXT HARVEST"],
                expanded: false),
        Section(cities: "BOSTON, MA",
                harvest: ["NEXT HARVEST"],
                expanded: false),
        
        ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].harvest.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded) {
            return 90
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = expandableHeaderView()
        header.customInit(title: sections[section].cities, section: section, delegate: self)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        cell.textLabel?.text = sections[indexPath.section].harvest[indexPath.row]
        return cell
        
    }
    
    func toggleSection(header: expandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        
    }

}
