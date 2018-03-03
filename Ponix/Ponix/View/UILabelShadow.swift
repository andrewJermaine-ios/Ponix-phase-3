//
//  UILabelShadow.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import Foundation


class UILabelShadow: UILabel {
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 3
    }

}
