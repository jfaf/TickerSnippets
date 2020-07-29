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
    
    @IBOutlet weak var MatchCommentaryTableView: UITableView!
    
    public var commentary = PublishSubject<[MatchCommentary]>()
    private let disposeBag = DisposeBag()
    
    
    
}
