//
//  MatchCommentaryTableViewCell.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation
import UIKit

class MatchCommentaryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var MatchCommentaryHeading: UILabel!
    @IBOutlet weak var MatchCommentarySubHeading: UILabel!
    
    public var commentaryCell : MatchCommentary! {
        
        didSet{
            
            self.MatchCommentaryHeading.text = commentaryCell.heading
            self.MatchCommentarySubHeading.text = commentaryCell.subheading
            
        }
        
    }
    
}
