//
//  ProfileTableViewCell.swift
//  Day2
//
//  Created by P090MMCTSE016 on 13/10/23.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblTitle.font = UIFont.boldSystemFont(ofSize: 16.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
    }
    
    func setValue(profile: Profile){
        lblTitle.text = profile.title
        lblDescription.text = profile.desc
    }
    
    
}
