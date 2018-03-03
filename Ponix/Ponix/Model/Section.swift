//
//  Section.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import Foundation

struct Section {
    var cities: String!
    var harvest: String!
    var expanded: Bool!
    
    init(cities: String, harvest: String, expanded: Bool) {
        self.cities = cities
        self.harvest = harvest
        self.expanded = expanded
    }
}

