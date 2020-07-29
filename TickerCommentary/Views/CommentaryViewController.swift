//
//  ViewController.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CommentaryViewController: UIViewController {

    @IBOutlet weak var MatchPhotosVCView: UIView!
    @IBOutlet weak var MatchCommentaryVCView: UIView!
    
    private lazy var matchPhotosViewController: MatchPhotosViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Home", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "MatchPhotosVC") as! MatchPhotosViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController, to: MatchPhotosVCView)
        
        return viewController
    }()
    
    private lazy var matchCommentaryViewController: MatchCommentaryViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Home", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "MatchCommentaryVC") as! MatchCommentaryViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController, to: MatchCommentaryVCView)
        
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

