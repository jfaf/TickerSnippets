//
//  MatchDataRepository.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import SwiftyJSON

class MatchDataRepository {
    
    func readLocalFile(forName name: String) -> Data? {
        
        guard let path = Bundle.main.path(forResource: name, ofType: "json") else {return nil}
        
        let url = URL(fileURLWithPath: path)
        
        do {
            
            let data = try Data(contentsOf: url)
            return data
            
        } catch {
            print(error)
        }
        
        return nil
    }
    
}


