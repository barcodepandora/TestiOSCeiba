//
//  UserTableViewCell.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
