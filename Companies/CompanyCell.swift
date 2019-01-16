//
//  CompanyTableViewCell.swift
//  Companies
//
//  Created by Daniel Peach on 1/15/19.
//  Copyright © 2019 Peach Crate. All rights reserved.
//

import UIKit

class CompanyCell: UITableViewCell {
    
    var companyLogoImage: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = UIColor.tRed
        iv.layer.cornerRadius = 25
        iv.clipsToBounds = true
        return iv
    }()
    
    var companyNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Company"
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor.tTeal
        
        buildCell()
    }
    
    fileprivate func buildCell() {
        self.addSubViews(views: [companyLogoImage, companyNameLabel])
        companyLogoImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil, padding: .init(top: 4, left: 4, bottom: 4, right: 4))
        companyLogoImage.setSize(width: 50, height: 50)
        companyNameLabel.anchor(top: topAnchor, leading: companyLogoImage.trailingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 4, left: 12, bottom: 4, right: 8))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
