//
//  SearchPlaceTableViewCell.swift
//  LocalTour
//
//  Created by user221918 on 6/15/22.
//

import UIKit

class SearchPlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
