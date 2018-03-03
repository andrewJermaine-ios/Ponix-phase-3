//
//  expandableHeaderView.swift
//  Ponix
//
//  Created by Andrew Smith on 3/3/18.
//  Copyright © 2018 Andrew Smith. All rights reserved.
//

import UIKit

protocol expandableHeaderViewDelegate {
    func toggleSection(header: expandableHeaderView, section: Int)
}

class expandableHeaderView: UITableViewHeaderFooterView {
    
    var delegate: expandableHeaderViewDelegate?
    var section: Int!
    
    override init(reuseIdentifier: String?){
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderAction)))
    }
    
    @objc func selectHeaderAction(gestureRecognizer: UITapGestureRecognizer){
        let cell = gestureRecognizer.view as! expandableHeaderView
        delegate?.toggleSection(header: self, section: cell.section)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func customInit(title: String, section: Int, delegate: expandableHeaderViewDelegate) {
        self.textLabel?.text = title
        self.section = section
        self.delegate = delegate 
    }
    
   /* override func layoutSubviews() {
        self.layoutSubviews()
        self.textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.contentView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }*/

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
