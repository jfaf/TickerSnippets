//
//  MatchPhotosCollectionViewVC.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class MatchPhotosViewController : UIViewController {
    
    @IBOutlet weak var MatchPhotosCollectionView: UICollectionView!
    
    public var matchPhotos = PublishSubject<[MatchPhotos]>()
    private let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           setupBinding()
       }
    
    private func setupBinding(){
        
        
        MatchPhotosCollectionView.register(UINib(nibName: "MatchPhotosCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: String(describing: MatchPhotosCollectionViewCell.self))
        
        
        matchPhotos.bind(to: MatchPhotosCollectionView.rx.items(cellIdentifier: "MatchPhotosCollectionViewCell", cellType: MatchPhotosCollectionViewCell.self)) {  (row,MatchPhoto,cell) in
            cell.matchPhoto = MatchPhoto
            }.disposed(by: disposeBag)
        
        
    }
    
    
}
