//
//  Commentary.swift
//  TickerCommentary
//
//  Created by user on 29/07/2020.
//  Copyright © 2020 user. All rights reserved.
//

import Foundation

struct MatchCommentary: Codable {
    
    let id: String
    let heading: String
    let subheading: String
    
}

extension MatchCommentary {
    init?(data: Data) {
        guard let me = try? JSONDecoder().decode(MatchCommentary.self, from: data) else { return nil }
        self = me
    }
}
