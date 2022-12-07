//
//  OptionCell.swift
//  YoutubeClone
//
//  Created by Jefferson Naranjo rodríguez on 7/12/22.
//

import UIKit

class OptionCell: UICollectionViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configCell(option: String){
        titleLabel.text = option
    }
}
