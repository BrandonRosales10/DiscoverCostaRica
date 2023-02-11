//
//  Database.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 2/8/23.
//

import Foundation

final class Database {
    private let FAVORITE_KEY = "favorite_key"
    
    func save(items: Set<Int>) {
        let array = Array(items)
        UserDefaults.standard.set(array, forKey: FAVORITE_KEY)
    }
    
    func load() -> Set<Int> {
        let array = UserDefaults.standard.array(forKey: FAVORITE_KEY) as? [Int] ?? [Int]()
        return Set(array)
    }
}
