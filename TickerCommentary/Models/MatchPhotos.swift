//
//  MatchPhotos.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation

struct MatchPhotos: Codable {
    
    let id: String
    let photoUrl: String
}

extension MatchPhotos {
    init?(data: Data) {
        guard let me = try? JSONDecoder().decode(MatchPhotos.self, from: data) else { return nil }
        self = me
    }
}
