//
//  MyCell.swift
//  NossoApp
//
//  Created by Silvano Malfatti on 23/09/21.
//

import UIKit

class MyCell: UITableViewCell
{
    @IBOutlet weak var lblTelefone: UILabel!
    @IBOutlet weak var lblNome: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
