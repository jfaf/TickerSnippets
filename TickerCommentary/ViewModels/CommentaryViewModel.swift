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
import SwiftyJSON

class CommentaryViewModel {
 
    public let matchPhotos: PublishSubject<[MatchPhotos]> = PublishSubject()
    public let matchCommentary: PublishSubject<[MatchCommentary]> = PublishSubject()
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
            
            let responseJson = try JSON(data: jsonData)
            
            print("JSON response log" , responseJson)
            
            let matchCommentary = responseJson["Commentary"].arrayValue.compactMap {return MatchCommentary(data: try! $0.rawData())}
            
            print("Commentary log" , matchCommentary)
            
            let matchPhotos = responseJson["Photos"].arrayValue.compactMap {return MatchPhotos(data: try! $0.rawData())}
            
            print("Photos log" , matchPhotos)
            
            self.matchCommentary.onNext(matchCommentary)
            self.matchPhotos.onNext(matchPhotos)
            
         } catch {
             print("decode error")
         }
     }
    
    
    
}
