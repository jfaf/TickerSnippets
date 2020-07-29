//
//  CommentaryViewModel.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CommentaryViewModel {
 
    public let matchPhotos: PublishSubject<MatchPhotos> = PublishSubject()
    public let matchCommentary: PublishSubject<MatchCommentary> = PublishSubject()
    public let loading: PublishSubject<Bool> = PublishSubject()

    private let disposeBag = DisposeBag()
    
    func requestMatchData(){
        
        self.loading.onNext(true)
        let MatchDataVC = MatchDataRepository()
        let matchData = MatchDataVC.readLocalFile(forName: "MatchData")!
        parse(jsonData: matchData)
        
    }
    
    func parse(jsonData: Data) {
         do {
             let decodedData = try JSONDecoder().decode(MatchCommentary.self,
                                                        from: jsonData)
             
             print("Heading: ", decodedData.heading)
             print("Subheading: ", decodedData.subheading)
             print("===================================")
         } catch {
             print("decode error")
         }
     }
    
    
    
}
