//
//  PostTableViewCell.swift
//  Parsetagram
//
//  Created by Pedro Sandoval Segura on 6/20/16.
//  Copyright © 2016 Pedro Sandoval Segura. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel! // "author"
    @IBOutlet weak var postImageView: UIImageView! //"media"
    @IBOutlet weak var likesLabel: UILabel! // "likesCount"
    @IBOutlet weak var commentsLabel: UILabel! //"commentsCount"
    
    @IBOutlet weak var captionLabel: UILabel! // "caption"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
