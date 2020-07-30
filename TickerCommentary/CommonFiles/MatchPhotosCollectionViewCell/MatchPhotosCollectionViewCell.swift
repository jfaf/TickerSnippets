//
//  MatchPhotosCollectionViewCell.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation
import UIKit

class MatchPhotosCollectionViewCell :UICollectionViewCell{
    
    
    @IBOutlet weak var MatchPhoto: UIImageView!
    
    
    public var matchPhoto: MatchPhotos! {
          didSet {
            self.MatchPhoto.loadImage(fromURL: matchPhoto.photoUrl)
          }
      }
    
}
