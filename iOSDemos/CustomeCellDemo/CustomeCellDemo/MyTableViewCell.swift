//
//  MyTableViewCell.swift
//  CustomeCellDemo
//
//  Created by Varun on 31/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var playerNameLbl: UILabel!
    @IBOutlet weak var playerTeamLbl: UILabel!
    @IBOutlet weak var playerInfoLbl: UILabel!
    @IBOutlet weak var playerPic: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func setData(player : Player) {
        
        playerNameLbl.text = player.name
        playerTeamLbl.text = player.team
        playerInfoLbl.text = player.info
        playerPic.image = UIImage(named: player.imageName)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
