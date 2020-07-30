//
//  MatchCommentaryViewController.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa


class MatchCommentaryViewController: UIViewController {
    
    @IBOutlet private weak var MatchCommentaryTableView: UITableView!
    
    public var commentarys = PublishSubject<[MatchCommentary]>()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
          super.viewDidLoad()
          setupBinding()
      }
    
    private func setupBinding(){
        
        MatchCommentaryTableView.register(UINib(nibName: "MatchCommentaryTableViewCell", bundle: nil), forCellReuseIdentifier: String(describing: MatchCommentaryTableViewCell.self))
        
        commentarys.bind(to: MatchCommentaryTableView.rx.items(cellIdentifier: "MatchCommentaryTableViewCell", cellType: MatchCommentaryTableViewCell.self)) {  (row,commentary,cell) in
            cell.commentaryCell = commentary
            }.disposed(by: disposeBag)
        
    }
        
    
}
