//
//  Item.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
