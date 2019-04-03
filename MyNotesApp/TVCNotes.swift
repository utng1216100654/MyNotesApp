//
//  TVCNotes.swift
//  MyNotesApp
//
//  Created by Usuario invitado on 3/25/19.
//  Copyright © 2019 usuario. All rights reserved.
//

import UIKit

class TVCNotes: UITableViewCell {
    
    @IBOutlet weak var buDelete: UIButton!
    @IBOutlet weak var buEdit: UIButton!
    
    @IBOutlet weak var laTitle: UILabel!
    @IBOutlet weak var laDetails: UITextView!
    @IBOutlet weak var laDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func SetNotes(note: MyNotes){
        laTitle.text = note.title
        laDetails.text = note.details
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/dd/yy h:mm a"
        let now = dateFormat.string(from: note.date_save as! Date)
        
        laDate.text = now
    }

}
